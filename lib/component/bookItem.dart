import 'package:flutter/material.dart';
import 'package:haomanhua_app/pages/list.dart';
import 'package:haomanhua_app/constants.dart';

//首页书籍
class BookItem extends StatelessWidget {
  const BookItem({Key key, this.book})
      : assert(book != null),
        super(key: key);
  final Map book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          print('这是第' + book['last_chapter_id']);
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return ChapterList();
          }));
        },
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(4.0),
              color: Color(AppColors.BookBackgroundColor),
              child: Column(
                children: <Widget>[
                  Image.network(book['comic_cover'], fit: BoxFit.fitWidth),
                  Text(
                    book['comic_name'],
                    maxLines: 1,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color(AppColors.BookNameColor),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(book['comic_desc'],
                      maxLines: 1,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Color(AppColors.BookDescColor),
                      ))
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(book['comic_hot'].toString().substring(0, 2) + 'w',
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromARGB(255, 153, 153, 153))),
                  Text(
                     book['last_chapter_name'],
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Color.fromARGB(255, 255, 129, 114)),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}