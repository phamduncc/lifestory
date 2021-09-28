import 'package:flutter/material.dart';

import 'Component/profile.dart';
class SearchFriend extends StatefulWidget {
  const SearchFriend({Key? key}) : super(key: key);

  @override
  _SearchFriendState createState() => _SearchFriendState();
}

class _SearchFriendState extends State<SearchFriend> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              floating: true,
              toolbarHeight: 200,
              expandedHeight: 200,
              actions: [
                Profile(),
              ],
              // forceElevated: innerBoxIsScrolled,
            ),
          ];
        },
        body: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: EdgeInsets.only(left: 30),
            width: 340,
            height: 50,
            child: TextField(
              keyboardType: TextInputType.text,
              cursorColor: Color.fromRGBO(88, 185, 255, 0.15),
              style: TextStyle(color: Color.fromRGBO(37, 57, 111, 0.55)),
              decoration: InputDecoration(
                hintText: "Tìm kiếm mọi người",
                  hintStyle: TextStyle(color: Color.fromRGBO(37, 57, 111, 0.4),
                    fontSize: 12
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(Icons.search, color: Color.fromRGBO(88, 185, 255, 1),)
              ),
            ),
          ),
        )
      ),
    );
  }
}
