import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life_story/Screen/Home/homeScreen.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}
class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    bool showPass = false;
    return Center(
      child: Container(
        width: 380,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
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
            TextField(
              keyboardType: TextInputType.text,
              obscureText: !showPass,
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
                  suffixIcon: GestureDetector(
                    onTap: (){
                      setState(() {
                        showPass=!showPass;
                      });
                    },
                      child: Icon(Icons.remove_red_eye, color: Color.fromRGBO(88, 185, 255, 1),)

                  )
              ),
            ),
            TextButton(onPressed: (){}, child: Text("Quên mật khẩu")),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              height: 50.0,
              minWidth: 380.0,
              color: Color.fromRGBO(88, 185, 255, 1),
              onPressed: (){
                Get.to(HomeScreen());
              },
              child: Text(
                "Đăng Nhập",
                style: TextStyle(
                    color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}

