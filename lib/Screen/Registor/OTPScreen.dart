import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

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
        title: Text("Xác nhận số điện thoại", style: TextStyle(color: Color.fromRGBO(37, 57, 111, 1),)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Mã xác thực được gửi đến số 000000"),
          SizedBox(height: 30,),
          OTPTextField(
            length: 6,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 50,
            style: TextStyle(
                fontSize: 17
            ),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.box,
            onCompleted: (pin) {
              print("Completed: " + pin);
            },
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Không nhân được mã?"),
                TextButton(onPressed: (){}, child: Text("Gửi lại"))
              ],
            ),
            SizedBox(height: 80,),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              height: 50.0,
              minWidth: 380.0,
              color: Color.fromRGBO(88, 185, 255, 1),
              onPressed: (){
              },
              child: Text(
                "Tiếp tục",
                style: TextStyle(
                    color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
