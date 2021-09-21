import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life_story/Screen/Registor/OTPScreen.dart';

import 'Components/body.dart';
class Registor extends StatelessWidget {
  const Registor({Key? key}) : super(key: key);

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
        title: Text("Đăng ký", style: TextStyle(color: Color.fromRGBO(37, 57, 111, 1),)),
      ),
      body: Body(),
    );
  }
}

