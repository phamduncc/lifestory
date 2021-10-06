import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ChangePass extends StatelessWidget {
  const ChangePass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color.fromRGBO(37, 57, 111, 1),
            ),
            onPressed: () {
              Get.back();
            },
          ),
          title: Container(
              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.2),
              child: Text("Đổi mật khẩu", style: TextStyle(color: Color.fromRGBO(37, 57, 111, 1)),))
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(children: [
                    Text("Mật khẩu mới", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color.fromRGBO(37, 57, 111, 1),
                    ),),
                  ],),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  width: 340,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    cursorColor:Colors.white,
                    style: TextStyle(color: Color.fromRGBO(37, 57, 111, 0.55)),
                    decoration: InputDecoration(
                      hintText: "",
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(37, 57, 111, 0.55),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(children: [
                    Text("Xác nhận mật khẩu", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color.fromRGBO(37, 57, 111, 1),
                    ),),
                  ],),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  width: 340,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    cursorColor:Colors.white,
                    style: TextStyle(color: Color.fromRGBO(37, 57, 111, 0.55)),
                    decoration: InputDecoration(
                      // hintText: "",
                      // hintStyle: TextStyle(
                      //   color: Color.fromRGBO(37, 57, 111, 0.55),
                      // ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 10),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              height: 50.0,
              minWidth: 180.0,
              color: Color.fromRGBO(88, 185, 255, 1),
              onPressed: (){
              },
              child: Text(
                "Xác nhận",
                style: TextStyle(
                    color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}
