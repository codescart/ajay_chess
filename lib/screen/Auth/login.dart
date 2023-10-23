import 'package:chess_app/screen/Auth/forgot_password.dart';
import 'package:chess_app/screen/Auth/register.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../Dashboard/dashboard.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text("Already \nhave an \nAccount?",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,fontSize: 25),),
                    ),
                    Image(image: AssetImage("assets/images/page.jpg"),height: height*0.3,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: TextField(
                  decoration: InputDecoration( enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                    borderSide: BorderSide(
                        width: 1, color: Colors.pinkAccent),
                  ),
                      labelText: "Username or email"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right:
                15,top: 15),
                child: TextField(
                  decoration: InputDecoration(enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                      borderSide: BorderSide(
                          width: 1, color: Colors.pinkAccent),),
                      labelText: "Password"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,left: 210),
                child: InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Forgot_Password()));
                },
                  child: Text("Forgot Password?",style: TextStyle(color: Colors.pink,fontSize: 15),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>bottom()));
                },
                  child: Container(alignment: Alignment.center,
                    height: height*0.06,width: width*0.5,
                    //color: Colors.redAccent,
                    decoration: BoxDecoration(borderRadius:
                    BorderRadius.all(Radius.circular(30)),color: Colors.redAccent,),
                    child: Text("LOGIN",style: TextStyle(fontWeight: FontWeight.w600,
                    fontSize: 20,color: Colors.white),),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: InkWell(onTap: (){
                  Navigator.push(context, PageTransition(child: Register(),
                      type: PageTransitionType.rightToLeft,duration:Duration(seconds: 1) ));
                },
                  child: Text("New user? Register Now",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,
                  color: Colors.pinkAccent
                  ),),
                ),
              )

            ],
          ),
        ],
      ),));
  }
}
