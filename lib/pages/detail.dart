import 'package:flutter/material.dart';
import 'package:haomanhua_app/pages/list.dart';
import 'package:haomanhua_app/pages/home.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWidget()
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var _isHidden = false;
  _changeHidden() {
    setState((){
      _isHidden = !_isHidden;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  _changeHidden();
                  print(_isHidden);
                },
                child: ListView(
                  children: <Widget>[
                    Image.network('http://mhpic.zymkcdn.com/comic/J%2F%E8%A7%A3%E7%A6%BB%E5%A6%96%E5%9C%A3%2F1%E8%AF%9DGQ%2F1.jpg-zymk.middle'),
                    Image.network('https://mhpic.zymkcdn.com/comic/J%2F%E8%A7%A3%E7%A6%BB%E5%A6%96%E5%9C%A3%2F1%E8%AF%9DGQ%2F2.jpg-zymk.middle'),
                    Image.network('https://mhpic.zymkcdn.com/comic/J%2F%E8%A7%A3%E7%A6%BB%E5%A6%96%E5%9C%A3%2F1%E8%AF%9DGQ%2F3.jpg-zymk.middle'),
                    Image.network('https://mhpic.zymkcdn.com/comic/J%2F%E8%A7%A3%E7%A6%BB%E5%A6%96%E5%9C%A3%2F1%E8%AF%9DGQ%2F4.jpg-zymk.middle'),
                    Container(
                      margin: EdgeInsets.only(top: 20.0,bottom: 70.0,left: 80.0,right: 80.0),
                      child: RaisedButton(
                        onPressed: (){
                          print(MediaQuery.of(context).padding.top);
                        },
                        color: Color.fromARGB(255, 208, 2, 27),
                        splashColor: Colors.white,//水波纹的颜色
                        colorBrightness: Brightness.light,//按钮主题高亮
                        child: Container(
                          child: Text('观看下一章',style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Offstage(
                offstage: _isHidden,
                child: Container(
                  padding: EdgeInsets.only(left: 5.0,right: 5.0,top: MediaQuery.of(context).padding.top),
                  height: MediaQuery.of(context).padding.top+50,
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromARGB(255, 34, 34, 34),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          MaterialButton(
                            child: Icon(Icons.arrow_back_ios,color: Color.fromARGB(255, 102, 102, 102),size: 30.0,),
                            minWidth: 0.0,
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            padding: EdgeInsets.all(0),
                          ),

                          Text('第1话 两世为人',style: TextStyle(color: Color.fromARGB(255, 102, 102, 102),fontSize: 18.0),)
                        ],
                      ),
                      MaterialButton(
                        child: Icon(Icons.home,color: Color.fromARGB(255, 102, 102, 102),size: 30.0,),
                        minWidth: 0.0,
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return HomePage();
                          }));
                        },
                        padding: EdgeInsets.all(0),
                      ),

                    ],
                  ),
                ),
              ),
              Offstage(
                offstage: _isHidden,
                child: Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height-50),
                  padding: EdgeInsets.only(left: 80.0,right: 80.0,top: 5.0),
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromARGB(255, 34, 34, 34),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(Icons.arrow_back,color: Colors.white,),
                          Text('上一话',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                      MaterialButton(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.apps,color: Colors.white,),
                            Text('目录',style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        minWidth: 0.0,
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return ChapterList();
                          }));
                        },
                        padding: EdgeInsets.all(0),
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.arrow_forward_ios,color: Colors.white,),
                          Text('下一话',style: TextStyle(color: Colors.white),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
  }
}



