
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life_story/Screen/mainScreen.dart';
import 'package:life_story/Screen/Registor/registor.dart';
import 'Screen/Login/loginScreen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;

    return GetMaterialApp(
      title: 'Life Story',
      home: MainScreen(),
    );
  }
}


