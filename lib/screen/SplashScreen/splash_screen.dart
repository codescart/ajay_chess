import 'dart:async';

import 'package:chess_app/screen/Auth/login.dart';
import 'package:flutter/material.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>login()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(backgroundColor:Color(0xfffe4d6a) ,
    body: Padding(
      padding: const EdgeInsets.fromLTRB(40,240,10,0),
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: Container(alignment: Alignment.center,

          child: Column(
            children: [
              Image.asset("assets/images/Chess_logo2.png",scale: 1.5,),
             Text("Please wait.....",style: TextStyle(color: Colors.white,fontSize: 20),)
            ],
          ),
          // CircularProgressIndicator(
          //   value: 0.3,
          //   color: Colors.greenAccent, //<-- SEE HERE
          //   backgroundColor: Colors.grey, //<-- SEE HERE
          // ),
        ),
      ),
    ));
  }
}
