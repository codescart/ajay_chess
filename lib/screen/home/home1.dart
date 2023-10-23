import 'package:chess_app/screen/Dashboard/More.dart';
import 'package:flutter/material.dart';


class First_home_page extends StatefulWidget {
  const First_home_page({Key? key}) : super(key: key);

  @override
  State<First_home_page> createState() => _First_home_pageState();
}

class _First_home_pageState extends State<First_home_page> {
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
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Details()));
                },
                icon: Icon(
                  Icons.account_balance_wallet,
                  color: Colors.white,
                ))
          ],

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
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(alignment: Alignment.center,
                    height: height*0.14,
                    width: width*0.4,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Free_Play__1_.png"),fit: BoxFit.fill,)),


                  ),SizedBox(width: 20,),
                  Container(alignment: Alignment.center,
                    height: height*0.14,
                    width: width*0.4,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Free_Play__2.png"),fit: BoxFit.fill,)),


                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(alignment: Alignment.center,
                    height: height*0.14,
                    width: width*0.4,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Free_Play__3.png"),fit: BoxFit.fill,)),


                  ),SizedBox(width: 20,),
                  Container(alignment: Alignment.center,
                    height: height*0.14,
                    width: width*0.4,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Free_Play_5.png"),fit: BoxFit.fill,)),


                  ),
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
