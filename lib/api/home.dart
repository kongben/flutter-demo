import 'package:dio/dio.dart';

Dio dio = new Dio();

class BookApi {
  // 获取首页漫画列表
  getBookList(page) async {
    var result = await dio.get(
        'http://47.52.56.241:56789/comic/all?page=$page');
    return result.data;
  }

}