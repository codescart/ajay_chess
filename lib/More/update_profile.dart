import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


class Update_Profile extends StatefulWidget {
  const Update_Profile({Key? key}) : super(key: key);

  @override
  State<Update_Profile> createState() => _Update_ProfileState();
}

class _Update_ProfileState extends State<Update_Profile> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back),
        backgroundColor: Color(0xfffe4d6a),
      title: Text("Update Profile",
        style: TextStyle(color: Colors.white),
      ),
      ),
      body:ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CircleAvatar(radius: 40,backgroundColor:Color(0xfffe4d6a) ,
                  child: Icon(Icons.person_outline,size: 50,),),
                TextField(
                  decoration: InputDecoration( enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                    borderSide: BorderSide(
                        width: 1, color: Colors.pinkAccent),
                  ),
                      labelText: "Name"),
                ),
                TextField(
                  decoration: InputDecoration( enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                    borderSide: BorderSide(
                        width: 1, color: Colors.pinkAccent),
                  ),
                      labelText: "Email"),
                ),SizedBox(height: 10,),
                IntlPhoneField(
                  disableLengthCheck: true,
                  decoration: InputDecoration(
                      labelText: 'Phone Number',
                      enabledBorder: UnderlineInputBorder(
                        //<-- SEE HERE
                        borderSide: BorderSide(
                            width: 1, color: Colors.pinkAccent),
                      )),
                  initialCountryCode: 'IN',
                  dropdownIconPosition: IconPosition.trailing,
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
                TextField(obscureText: true
                  ,
                  decoration: InputDecoration( enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                    borderSide: BorderSide(
                        width: 1, color: Colors.pinkAccent),
                  ),
                      labelText: "Password",),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(alignment: Alignment.center,
                    height: 40,width: 160,
                    //color: Colors.redAccent,
                    decoration: BoxDecoration(borderRadius:
                    BorderRadius.all(Radius.circular(30)),color: Colors.redAccent,),
                    child: Text("SAVE",style: TextStyle(fontWeight: FontWeight.w500,
                        fontSize: 16,color: Colors.white),),

                  ),
                ),
              ],
            ),
          ),
        ],
      )
      )) ;
  }
}
