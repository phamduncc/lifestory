import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life_story/Screen/Login/loginScreen.dart';
import 'package:life_story/Screen/Registor/registor.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
          children:[
            Positioned.fill(  //
              child: Image(
                image: AssetImage('assets/images/main_screen2.png'),
                fit : BoxFit.fill,
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 280, top: 60),
                  child:  Container(
                    height: 60,
                    width: 60,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      onPressed: (){},
                      child: Row(
                        children: [
                          Image.asset("assets/images/img_vn.png",height: 10,width: 16,),
                          Text("VI", style: TextStyle(fontSize: 10),),
                        ],
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 140),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Life Story",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  fontFamily: 'Noto Sans',
                                  color: Color.fromRGBO(37, 57, 111, 1),
                                ),
                              ),
                              Text(
                                "Tham gia để lan tỏa câu chuyện của bạn đến mọi người!",
                                style: TextStyle(
                                  color: Color.fromRGBO(37, 57, 111, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.75,
                                  fontFamily: 'Noto Sans',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 90,),
                      Container(
                        child: Center(
                          child: Column(
                            children: [
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                height: 50.0,
                                minWidth: 380.0,
                                color: Color.fromRGBO(88, 185, 255, 1),
                                onPressed: (){
                                  Get.to(Login());
                                },
                                child: Text(
                                  "Đăng Nhập",
                                  style: TextStyle(
                                      color: Colors.white),),
                              ),
                              SizedBox(height: 15,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Divider(),
                                  Text("Hoặc", style: TextStyle(
                                      color: Color.fromRGBO(88, 185, 255, 1)),),
                                  Divider(),
                                ],
                              ),
                              SizedBox(height: 15,),
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                height: 50.0,
                                minWidth: 380.0,
                                color: Colors.white,
                                onPressed: (){
                                  Get.to(Registor());
                                },
                                child: Text(
                                  "Đăng Ký",
                                  style: TextStyle(
                                      color: Color.fromRGBO(88, 185, 255, 1)),),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ]
      ),
    );
  }
}
