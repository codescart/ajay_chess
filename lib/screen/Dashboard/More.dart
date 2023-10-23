import 'package:chess_app/More/depoosit_money.dart';
import 'package:chess_app/More/withdraw_money.dart';
import 'package:flutter/material.dart';

class Category {
  String category;
  String icons;
  Category(this.category, this.icons);
}

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    List<Category> categories = [
      Category(
        'Profile',
        'assets/images/profile.png',
      ),
      Category(
        'History',
        'assets/images/histoory.png',
      ),
      Category(
        'Leaderboard',
        'assets/images/Leaderboard.png',
      ),
      Category(
        'Privacy Poicy',
        'assets/images/Policy.png',
      ),
      Category(
        'Need Help',
        'assets/images/Help.png',
      ),
      Category(
        'About Us',
        'assets/images/about_us.png',
      ),
      Category(
        'Terms & Condition',
        'assets/images/Terms&Condition.png',
      ),
      Category(
        'Support',
        'assets/images/icons8-support-24.png',
      ),
      Category(
        'Refer & Earn',
        'assets/images/icons8-cash-in-hand-48.png',
      ),
      Category(
        'Logout',
        'assets/images/Logout.png',
      ),

    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Image.asset("assets/images/ChessLogo.png"),
        backgroundColor: Color(0xfffe4d6a),
        title: Text(
          "Realmoneychess",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Icon(
            Icons.notifications_rounded,
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: height * 0.2,
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      color: Color(0xfffe4d6a)),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(radius:30,
                      child: Text('A'),
                      backgroundColor: Colors.redAccent,
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Aman',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),
                        Text('+91 7458946942',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height*0.2,
                    width: width,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(height: 45,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("My Balannce",style: TextStyle(color: Colors.black,fontSize: 18),),
                                Text("₹0.0",style: TextStyle(color: Colors.black,fontSize: 18)),
                              ],
                            ),
                          ),
                        ),Divider(),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                InkWell(onTap:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DepositPage()));
                                },
                                  child: CircleAvatar(radius: 25,backgroundColor:Color(0xff8bc24a),
                                    child: Image.asset("assets/images/icons8-wallet-64.png",scale: 2,),),
                                ),
                                Text("₹0.0"),
                                Text("Deposit")
                              ],
                            ),
                            Column(
                              children: [
                                InkWell(onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WithdrawPage()));
                                },
                                  child: CircleAvatar(radius: 25,backgroundColor:Color(0xfffb8b6b),
                                    child: Image.asset("assets/images/icons8-bank-64 (1).png",scale: 2,),),
                                ),
                                Text("₹0.0"),
                                Text("Withdraw Cash")
                              ],
                            ),
                            Column(
                              children: [
                                InkWell(onTap: (){

                                },
                                  child: CircleAvatar(radius: 25,backgroundColor:Color(0xff3fa7f9),
                                    child: Image.asset("assets/images/icons8-tag-64.png",scale: 3,),),
                                ),
                                Text("₹0.0"),
                                Text("Bonus Cash")
                              ],
                            ),
                          ],)
                      ],
                    ),
                  ),
                ),
                Container(
                  height: height*0.5,
                  width: width,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                      itemCount: categories.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Container(
                              //color:categories[index].end,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(elevation:1,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80),
                                    //set border radius more than 50% of height and width to make circle
                                  )
                                  ,
                                  child: CircleAvatar(
                                    radius:25,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(radius: 12,

                                      backgroundImage: AssetImage(categories[index].icons,),backgroundColor: Colors.white, ),
                                  ),
                                ),

                              ),
                            ),
                            Center(
                              child: Text(categories[index].category,style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            // title: name[index]
                          ],
                        );
                      }
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
