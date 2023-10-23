
import 'package:chess_app/screen/Dashboard/More.dart';
import 'package:chess_app/screen/Dashboard/youtube.dart';
import 'package:chess_app/screen/home/home1.dart';
import 'package:flutter/material.dart';
import '../home/home.dart';
import 'package:url_launcher/url_launcher.dart';

class bottom extends StatefulWidget {
  const bottom({Key? key}) : super(key: key);

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int _currentindex = 0;
  final Screen = [
    First_home_page(),
    InkWell(onTap: (){
      launch("https://www.youtube.com/");
    },
        child: Youtube()),
    Details(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Screen[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.shifting,
        // fixedColor: Colors.white,
         //backgroundColor: Color(0xff015c8a),
      //// unselectedItemColor: Colors.black,
       //selectedItemColor: Colors.white,

        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,size: 26,
            ),
            label: "Home",
            backgroundColor: Color(0xff015c8a),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.play_circle,
              color: Colors.black,
            ),
            label: 'How to play',
            backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.widgets_rounded,
              color: Colors.black,
            ),
            label: 'More',
            backgroundColor: Colors.transparent,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
