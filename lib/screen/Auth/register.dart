import 'package:chess_app/screen/Dashboard/dashboard.dart';
import 'package:chess_app/screen/home/home.dart';
import 'package:flutter/material.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xfffe4d6a),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20,45,0,0),
                child: Row(
                  children: [
                    Text("Here's \nyour first \nstep with \nus!",
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,
                      color: Colors.white),),
                    Image(image: AssetImage("assets/images/register.jpg"),height:height*0.3 ,)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,8,20,0),
                child: Container(
                  height: height*0.5,
                  width: width*0.9,
                  decoration: BoxDecoration(borderRadius:
                  BorderRadius.all(Radius.circular(10)),color: Colors.white,),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                            borderSide: BorderSide(
                                width: 1, color: Colors.pinkAccent),),
                              labelText: "Name",),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextField(
                            decoration: InputDecoration(enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                              borderSide: BorderSide(
                                  width: 1, color: Colors.pinkAccent),),
                                labelText: "Email",),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:
                          10),
                          child: TextField(
                            decoration: InputDecoration(enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                              borderSide: BorderSide(
                                  width: 1, color: Colors.pinkAccent),),
                                labelText: "Password",),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Container(alignment: Alignment.center,
                            height: height*0.06,width: width*0.5,
                            //color: Colors.redAccent,
                            decoration: BoxDecoration(borderRadius:
                            BorderRadius.all(Radius.circular(30)),color: Colors.redAccent,),
                            child: InkWell(onTap: (){
                              // showDialog(context: context, builder:
                              // (BuildContext context){
                              //   return AlertDialog(
                              //     scrollable: true,
                              //     title: Text("ENTER YOUR MOBILE NUMBER"),
                              //     content: Padding(padding:
                              //       EdgeInsets.all(8.0),child:  Form(
                              //       child: Column(
                              //         children: <Widget>[
                              //       TextFormField(
                              //       decoration: InputDecoration(
                              //         labelText: 'Phone',
                              //         icon: Icon(Icons.account_box),
                              //       ),
                              //     ),
                              //           Text("Verify",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500
                              //           ),)
                              //         ],
                              //     ),
                              //   )
                              //     )
                              //   );
                              // }
                              // );
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>bottom()));
                            },
                              child: Text("REGISTER",style: TextStyle(fontWeight: FontWeight.w600,
                                  fontSize: 20,color: Colors.white),),
                            ),),),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: InkWell(onTap: (){
                            Navigator.pop(context);
                          },
                            child: Text("Already have an account?",style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.redAccent),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
