import 'package:flutter/material.dart';
import 'package:haomanhua_app/component/HomeAppBar.dart';
import 'dart:ui';
import 'package:haomanhua_app/pages/detail.dart';

class ChapterList extends StatefulWidget {
  @override
  _ChapterListState createState() => _ChapterListState();
}

class _ChapterListState extends State<ChapterList> {

  bool _isCollect = false;
  bool _isOrderByAcs = true; //目录是否为正序排列
  //改变收藏状态
  void _ChangeCollect(){
    setState(() {
      _isCollect = !_isCollect;
    });
  }
  void _ChangeOderBy(){
    setState(() {
      _isOrderByAcs=!_isOrderByAcs;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: ListView(
        children: <Widget>[
          //介绍
          Container(
            height: 150.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://image.zymkcdn.com/file/cover/000/002/762.jpg',),
                    fit: BoxFit.fitWidth
                )
            ),
            child: Stack(
              children: <Widget>[
                Center(
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                      child: Opacity(opacity: 0.5,child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black
                        ),
                      ),),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 500.0,
                      child:  Text('情池深深·豪门第一暖婚',style: TextStyle(color:Colors.white,fontSize: 26.0),textAlign: TextAlign.center,),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                        width: 500.0,
                        child:  Text('败犬千金如何脚踩渣男、手撕绿茶！',style: TextStyle(color:Colors.white,fontSize: 14.0),textAlign: TextAlign.center,)
                    ),
                    RaisedButton(
                      onPressed: (){
                        _ChangeCollect();
                      },
                      color: Colors.white,
                      splashColor: Colors.white,//水波纹的颜色
                      colorBrightness: Brightness.light,//按钮主题高亮
                      child: Container(
                        width: 90.0,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.star,size: 16.0,color: _isCollect?Colors.amber:Colors.grey,),
                            Text('收藏到书架')
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          //目录
          Container(
            height: 80.0,
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(20.0),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('目录',style:TextStyle(fontSize: 20.0),),
                OutlineButton(
                  onPressed: (){
                    _ChangeOderBy();
                  },
                  highlightColor: Colors.white,
                  highlightElevation: 0.0,
                  borderSide: BorderSide(color: Color.fromARGB(255, 187, 187, 187)),
                  color: Colors.white,
                  splashColor: Colors.white,//水波纹的颜色
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Text('章节排序'),
                        Icon(_isOrderByAcs?Icons.arrow_upward:Icons.arrow_downward,size: 16.0,color: Colors.red,),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          //章节
          Column(
            children: <Widget>[
              MaterialButton(
                child: Container(
                  height: 40.0,
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textBaseline: TextBaseline.ideographic,
                    children: <Widget>[
                      Text('预告',style:TextStyle(fontSize: 15.0,color: Color.fromARGB(255, 68, 68, 68),fontWeight: FontWeight.bold),),
                      Text("2018-10-10",style:TextStyle(fontSize: 15.0),)
                    ],
                  ),
                ),
                minWidth: 0.0,
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    return DetailPage();
                  }));
                },
                padding: EdgeInsets.all(0),
              ),
              Container(
                height: 1.0,
                margin: EdgeInsets.only(left:20.0,right: 20.0),
                color: Color.fromARGB(255, 221, 221, 221),
              )
            ],
          ),
          //章节
          Column(
            children: <Widget>[
              Container(
                height: 40.0,
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textBaseline: TextBaseline.ideographic,
                  children: <Widget>[
                    Text('第1话 两世为人',style:TextStyle(fontSize: 15.0,color: Color.fromARGB(255, 68, 68, 68),fontWeight: FontWeight.bold),),
                    Text("2018-10-10",style:TextStyle(fontSize: 15.0),)
                  ],
                ),
              ),
              Container(
                height: 1.0,
                margin: EdgeInsets.only(left:20.0,right: 20.0),
                color: Color.fromARGB(255, 221, 221, 221),
              )
            ],
          ),
          //章节
          Column(
            children: <Widget>[
              Container(
                height: 40.0,
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textBaseline: TextBaseline.ideographic,
                  children: <Widget>[
                    Text('第1话 两世为人',style:TextStyle(fontSize: 15.0,color: Color.fromARGB(255, 68, 68, 68),fontWeight: FontWeight.bold),),
                    Text("2018-10-10",style:TextStyle(fontSize: 15.0),)
                  ],
                ),
              ),
              Container(
                height: 1.0,
                margin: EdgeInsets.only(left:20.0,right: 20.0),
                color: Color.fromARGB(255, 221, 221, 221),
              )
            ],
          ),
          //章节
          Column(
            children: <Widget>[
              Container(
                height: 40.0,
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textBaseline: TextBaseline.ideographic,
                  children: <Widget>[
                    Text('第1话 两世为人',style:TextStyle(fontSize: 15.0,color: Color.fromARGB(255, 68, 68, 68),fontWeight: FontWeight.bold),),
                    Text("2018-10-10",style:TextStyle(fontSize: 15.0),)
                  ],
                ),
              ),
              Container(
                height: 1.0,
                margin: EdgeInsets.only(left:20.0,right: 20.0),
                color: Color.fromARGB(255, 221, 221, 221),
              )
            ],
          ),
          //章节
          Column(
            children: <Widget>[
              Container(
                height: 40.0,
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textBaseline: TextBaseline.ideographic,
                  children: <Widget>[
                    Text('第1话 两世为人',style:TextStyle(fontSize: 15.0,color: Color.fromARGB(255, 68, 68, 68),fontWeight: FontWeight.bold),),
                    Text("2018-10-10",style:TextStyle(fontSize: 15.0),)
                  ],
                ),
              ),
              Container(
                height: 1.0,
                margin: EdgeInsets.only(left:20.0,right: 20.0),
                color: Color.fromARGB(255, 221, 221, 221),
              )
            ],
          ),
          //loading more
          Container(
            margin: EdgeInsets.only(left:100.0,right: 100.0,top:20.0,bottom: 10.0),
            padding: EdgeInsets.all(20.0),
            color: Colors.white,
            child: Text('加载更多',textAlign: TextAlign.center,),
          )
        ],
      ),
    );
  }
}






