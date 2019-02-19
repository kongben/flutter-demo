import 'package:flutter/material.dart';
import 'package:haomanhua_app/component/Swiper.dart';
import 'package:haomanhua_app/component/HomeAppBar.dart';
import 'package:haomanhua_app/pages/login.dart';
import 'package:haomanhua_app/pages/list.dart';
import 'package:haomanhua_app/constants.dart';
import 'package:haomanhua_app/api/home.dart';
import 'package:haomanhua_app/component/bookItem.dart';
import 'package:flutter_refresh/flutter_refresh.dart';

BookApi bookAPI = new BookApi();

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _orderByStatus = 1;
  var _page = 1;
  var _bookList = []; //漫画列表
  //更新排序方式
  void _reOrderBy(status) {
    if (_orderByStatus != status) {
      setState(() {
        _orderByStatus = status;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMovieList(_page);
  }

  Future<Null> onFooterRefresh() {
    return new Future.delayed(new Duration(seconds: 2), () {
      print('a');
      setState(() {
        _page++;
      });
      getMovieList(_page);
    });
  }

  // 获取电影列表数据的方法
  void getMovieList(page) async {
    var temp = await bookAPI.getBookList(page);
    print(temp);
    setState(() {
      // 合并数组
      _bookList.addAll(temp['data']);
      print(_bookList.length);
//      _total = temp['total'];
//      _isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body:  Refresh(
        onFooterRefresh: onFooterRefresh,
        childBuilder: (BuildContext context,
            {ScrollController controller, ScrollPhysics physics}) {
          return ListView(
            physics: physics,
            controller: controller,
            children: <Widget>[
              //轮播图
              SwiperPage(),
              //排序
              Container(
                  height: 40.0,
                  color: Color(AppColors.OrderByBackgroundColor),
                  child: Container(
                    padding: EdgeInsets.only(left: 60.0, right: 60.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        MaterialButton(
                          onPressed: () {
                            _reOrderBy(1);
                          },
                          child: Row(
                            children: <Widget>[
                              Text(
                                '全部',
                                style: TextStyle(
                                    color: Color(AppColors.OrderByTextColor),
                                    fontSize: 15),
                              ),
                              Icon(
                                Icons.arrow_upward,
                                color: Color(_orderByStatus == 1
                                    ? AppColors.OrderByActiveIconColor
                                    : AppColors.OrderByIconColor),
                                size: 15,
                              )
                            ],
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            _reOrderBy(2);
                          },
                          child: Row(
                            children: <Widget>[
                              Text(
                                '推荐',
                                style: TextStyle(
                                    color: Color(AppColors.OrderByTextColor),
                                    fontSize: 15),
                              ),
                              Icon(
                                Icons.arrow_upward,
                                color: Color(_orderByStatus == 2
                                    ? AppColors.OrderByActiveIconColor
                                    : AppColors.OrderByIconColor),
                                size: 15,
                              )
                            ],
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            _reOrderBy(3);
                          },
                          child: Row(
                            children: <Widget>[
                              Text(
                                '连载',
                                style: TextStyle(
                                    color: Color(AppColors.OrderByTextColor),
                                    fontSize: 15),
                              ),
                              Icon(
                                Icons.arrow_upward,
                                color: Color(_orderByStatus == 3
                                    ? AppColors.OrderByActiveIconColor
                                    : AppColors.OrderByIconColor),
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              //书籍列表
              GridView.builder(
                padding: EdgeInsets.all(10.0),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.57,
                  crossAxisSpacing: 10.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return BookItem(book: _bookList[index]);
                },
                itemCount: _bookList.length,
              )
            ],
          );
        },
      )

    );
  }
}
