import 'package:flutter/material.dart';
import 'package:haomanhua_app/pages/home.dart';
import 'package:haomanhua_app/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '好漫画',
      theme: ThemeData(
        primaryColor: Color(AppColors.AppBarColor) //
      ),
      home: HomePage()
    );
  }
}