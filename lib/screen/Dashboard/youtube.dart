import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Youtube extends StatefulWidget {
  const Youtube({Key? key}) : super(key: key);

  @override
  State<Youtube> createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(elevation: 0,centerTitle: true,
          leading: Image.asset("assets/images/ChessLogo.png"),
          title: Text(
            "Realmoneychess",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          backgroundColor: Color(0xffbf4a01),
        ),
        body: Column
          (
          children: [
            Container(
              height:height*0.8,
              width: width,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/BGimage.png"),fit: BoxFit.fill,)),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(onTap:(){
                    launch("https://www.youtube.com/");
                  },
                    child: Container(alignment: Alignment.center,
                      height: height*0.14,
                      width: width*0.5,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/button1.png"),fit: BoxFit.fill,)),
                      child: Text("Open URL",style:TextStyle(fontSize: 22,fontWeight: FontWeight.w800,color:Colors.black),),

                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
