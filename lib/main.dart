
import 'package:chess_app/More/contest_details.dart';
import 'package:chess_app/More/update_profile.dart';
import 'package:chess_app/More/withdraw_money.dart';
import 'package:chess_app/bloc/app_blocs.dart';
import 'package:chess_app/screen/Auth/forgot_password.dart';
import 'package:chess_app/screen/Dashboard/dashboard.dart';
import 'package:chess_app/screen/SplashScreen/splash_screen.dart';
import 'package:chess_app/screen/home/home.dart';
import 'package:chess_app/screen/Auth/login.dart';
import 'package:chess_app/screen/Auth/register.dart';
import 'package:chess_app/screen/home/home1.dart';
import 'package:chess_app/screens/game_screen.dart';
import 'package:flutter/material.dart';

import 'More/depoosit_money.dart';

void main() {
  createAppBlocs();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chess',
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
     // home: const GameScreen(),
      home: bottom(),
    );
  }
}
