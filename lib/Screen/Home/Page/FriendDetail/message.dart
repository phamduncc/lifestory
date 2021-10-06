import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
class Massage extends StatefulWidget {
  const Massage({Key? key}) : super(key: key);

  @override
  _MassageState createState() => _MassageState();
}

class _MassageState extends State<Massage> {
  bool clicked=false;
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
          child: Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/images/avt_7.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10,),
              Text("Name", style: TextStyle(color: Color.fromRGBO(37, 57, 111, 1)),)
            ],
          ),
        )
      ),
      body: Column(
        children: [
          Flexible(
              child: ListView()
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                SizedBox(width: 30,),
                Container(
                  height: 60,
                  width: 60,
                  child: IconButton(
                      onPressed: (){
                        showOverlay(context);
                        // myPopMenu();
                        setState(() {
                          clicked=!clicked;
                        });
                      },
                      icon:clicked?SvgPicture.asset("assets/icons/send_close.svg"): SvgPicture.asset("assets/icons/send_file.svg")
                  ),
                ),
                Container(
                  width: 280,
                  height: 60,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    cursorColor: Color.fromRGBO(88, 185, 255, 0.15),
                    style: TextStyle(color: Color.fromRGBO(37, 57, 111, 0.55)),
                    decoration: InputDecoration(
                        hintText: "Nhập tin nhắn",
                        hintStyle: TextStyle(color: Color.fromRGBO(37, 57, 111, 0.4),
                            fontSize: 12
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      suffixIcon: Container(
                        height: 60,
                        width: 60,
                        child: IconButton(
                          icon:SvgPicture.asset("assets/icons/send.svg") ,
                          onPressed: (){},
                        ),
                      )
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),

    );
  }
  showOverlay(BuildContext context) async {
    OverlayState? overlayState= Overlay.of(context);
    OverlayEntry overlayEntry= OverlayEntry(
        builder: (BuildContext context) {
          return Positioned(
            top: MediaQuery.of(context).size.height*0.8,
              left: 10,
              child: Container(
                width: 260,
                child: AlertDialog(
                  backgroundColor: Color.fromRGBO(244, 248, 254, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  actions: [
                    IconButton(
                        onPressed: (){},
                        icon: SvgPicture.asset("assets/icons/paper.svg")),
                    IconButton(
                        onPressed: (){},
                        icon: SvgPicture.asset("assets/icons/image.svg")),
                    IconButton(
                        onPressed: (){},
                        icon: SvgPicture.asset("assets/icons/voice.svg")),

                  ],
                ),
              )
          );
        }
    );

      overlayState!.insert(overlayEntry);
    await Future.delayed(Duration(seconds: 2));
    overlayEntry.remove();
  }
  // myPopMenu(){
  //   return PopupMenuButton(
  //     itemBuilder: (BuildContext context) =>[
  //       PopupMenuItem(
  //           value: 2,
  //           child: Row(
  //             children: <Widget>[
  //               Text('Share')
  //             ],
  //           )),
  //     ]
  //   );
  // }
}
