import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Components/body.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Color.fromRGBO(37, 57, 111, 1),),
          onPressed: (){
            Get.back();
          },
        ),
        title: Text("Đăng nhập", style: TextStyle(color: Color.fromRGBO(37, 57, 111, 1),)),
      ),
      body: Body(),

    );
  }
}

