import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life_story/Screen/Registor/OTPScreen.dart';
class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 380,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              keyboardType: TextInputType.text,
              cursorColor:Colors.white,
              style: TextStyle(color: Color.fromRGBO(37, 57, 111, 0.55)),
              decoration: InputDecoration(
                labelText: "Tên hiển thị",
                labelStyle: TextStyle(
                  color: Color.fromRGBO(37, 57, 111, 0.55),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.person, color: Color.fromRGBO(88, 185, 255, 1),),
              ),

            ),
            SizedBox(height: 10,),
            TextFormField(
              keyboardType: TextInputType.number,
              cursorColor:Colors.white,
              style: TextStyle(color: Color.fromRGBO(37, 57, 111, 0.55)),
              decoration: InputDecoration(
                  labelText: "Số điện thoại",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(37, 57, 111, 0.55),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.phone_android, color: Color.fromRGBO(88, 185, 255, 1),)
              ),

            ),
            SizedBox(height: 10,),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              cursorColor:Colors.white,
              style: TextStyle(color: Color.fromRGBO(37, 57, 111, 0.55)),
              decoration: InputDecoration(
                  labelText: "Mật khẩu",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(37, 57, 111, 0.55),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.vpn_key, color: Color.fromRGBO(88, 185, 255, 1),),
                  suffixIcon: Icon(Icons.remove_red_eye, color: Color.fromRGBO(88, 185, 255, 1),)
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              cursorColor:Colors.white,
              style: TextStyle(color: Color.fromRGBO(37, 57, 111, 0.55)),
              decoration: InputDecoration(
                  labelText: "Xác nhận mật khẩu",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(37, 57, 111, 0.55),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.vpn_key, color: Color.fromRGBO(88, 185, 255, 1),),
                  suffixIcon: Icon(Icons.remove_red_eye, color: Color.fromRGBO(88, 185, 255, 1),)
              ),
            ),
            SizedBox(height: 10,),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              height: 50.0,
              minWidth: 380.0,
              color: Color.fromRGBO(88, 185, 255, 1),
              onPressed: (){
                Get.to(OTPScreen());

              },
              child: Text(
                "Đăng Ký",
                style: TextStyle(
                    color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
