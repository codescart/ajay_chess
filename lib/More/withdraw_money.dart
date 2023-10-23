import 'package:flutter/material.dart';


class WithdrawPage extends StatefulWidget {
  const WithdrawPage({Key? key}) : super(key: key);

  @override
  State<WithdrawPage> createState() => _WithdrawPageState();
}

class _WithdrawPageState extends State<WithdrawPage> {
  String? payment;
  TextEditingController rupees=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(child: Scaffold(

      appBar: AppBar(leading: InkWell(onTap: (){
        Navigator.pop(context);
      },
          child: Icon(Icons.arrow_back)),
        title: Text("Deposit Money",style: TextStyle(color:Colors.white,),),
        backgroundColor:Color(0xfffe4d6a),
      ),
      body: Column(
        children: [
          SizedBox(height:55,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  buildRadioButton(0,'PayTm'),
                  buildRadioButton(1,"GooglePay"),
                  buildRadioButton(2,'PhonePe')
                ],
              ),
            ),
          ),
          buildTextField(width,height),
          Padding(
            padding: const EdgeInsets.fromLTRB(15,15,8,15),
            child: Text("*Note: only winning amount can be withdraw and it will be\n          "
                " transferred to yoour wallet within 24 hours",
              style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 12),),
          ),
          InkWell(onTap: (){},
            child: Container(alignment: Alignment.center,
              height: height*0.07,width: width*0.8,
              //color: Colors.redAccent,
              decoration: BoxDecoration(borderRadius:
              BorderRadius.all(Radius.circular(30)),color: Color(0xfffe4d6a)),
              child: Text("WITHDRAW",style: TextStyle(fontWeight: FontWeight.w600,
                  fontSize: 20,color: Colors.white),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text("Minimum Redeem Amount is ₹100",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,
                color:Color(0xfffe4d6a) ),),
          )


        ],
      ),
    )
    );
  }
  int selectedRadio = 0;
  Widget buildRadioButton(int value, String label) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Radio(activeColor: Color(0xfffe4d6a),
          value: value,
          groupValue: selectedRadio,
          onChanged: (int? newValue) {
            setState(() {
              selectedRadio = newValue!;
            });
          },
        ),
        Text(label,style: TextStyle(fontSize: 12),),
      ],
    );
  }
  Widget buildTextField(width,heigth){
    return Column(
      children: [
        Container(
          width: width*0.9,height: heigth*0.07,
          decoration: BoxDecoration(border:Border.all(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(5)
            ),),
          child: TextField( decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              border: InputBorder.none,hintText: "Enter Register Name",
              hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w400))
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 17),
          child: Row(
            children: [
              Container(width: width*0.1,height: heigth*0.07,alignment: Alignment.center,
                  decoration: BoxDecoration(border:Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5)
                      ),color: Colors.grey.shade300),
                  child: Text("+91",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)
              ),
              Container(
                width: width*0.8,height: heigth*0.07,
                decoration: BoxDecoration(border:Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(5)
                  ),),
                child: TextField( decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    border: InputBorder.none,hintText: "Enter PayTm Number",
                    hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w400))
                ),
              ),
            ],
          ),
        ),SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 17),
          child: Row(
            children: [
              Container(width: width*0.1,height: heigth*0.07,alignment: Alignment.center,
                  decoration: BoxDecoration(border:Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5)
                      ),color: Colors.grey.shade300),
                  child: Text("₹",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)
              ),
              Container(
                width:  width*0.8,height: heigth*0.07,
                decoration: BoxDecoration(border:Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(5)
                  ),),
                child: TextField( decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    border: InputBorder.none,hintText: "Enter Withdraw Amount",
                    hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w400))
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}
