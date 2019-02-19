import 'package:flutter/material.dart';
import 'package:haomanhua_app/pages/login.dart';
import 'package:haomanhua_app/component/asset.dart';

class HomeAppBar extends StatelessWidget  implements PreferredSizeWidget {
  HomeAppBar({Key key}) : preferredSize = Size.fromHeight(56.0), super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: <Widget>[
          MaterialButton(
            child: Text('登录',textAlign: TextAlign.left,style: TextStyle(color: Color.fromARGB(255, 153, 153, 153)),),
            minWidth: 0.0,
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return LoginPage();
              }));
            },
            padding: EdgeInsets.all(0),
          ),
          Text('好漫画',style: TextStyle(
              color: Color.fromARGB(255, 102, 102, 102)
          ),),
          IconButton(
              icon:Icon(Icons.search,color: Color.fromARGB(255, 153, 153, 153)),
            onPressed: (){
                showSearch(context: context, delegate: SearchBarDelegate());
            },
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
      centerTitle: true,
      elevation: 0.0,
    );
  }
}

class SearchBarDelegate extends SearchDelegate<String>{

  //取消icon
  @override
  List<Widget> buildActions(BuildContext context){
    return [
      IconButton(
        icon:Icon(Icons.clear),
        onPressed: ()=>query = '',
      )
    ];
  }

  //返回icon
  @override
  Widget buildLeading(BuildContext context){
    return IconButton(
      icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: ()=>close(context,null),
    );
  }

  //搜索结果
  @override
  Widget buildResults(BuildContext context){
    return Container(
      width: 100.0,
      height: 100.0,
      child: Card(
        color: Colors.amber,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  //文字提示
  @override
  Widget buildSuggestions(BuildContext context){
    final suggestionList = query.isEmpty
        ?recentSuggest
        :searchList.where((input)=>input.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder:(context,index)=> ListTile(
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0,query.length),
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
          children: [
            TextSpan(
              text: suggestionList[index].substring(query.length),
              style: TextStyle(
                  color: Colors.grey,
              ),
            )
          ]
        )),
      )
    );
  }
}