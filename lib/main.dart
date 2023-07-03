import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/AccountTest.dart';
import 'package:untitled/AccountUI.dart';
import 'package:untitled/BottomNavigation.dart';
import 'package:untitled/Create.dart';
import 'package:untitled/DashBoard.dart';
import 'package:untitled/EditProfile.dart';
import 'package:untitled/HomePage.dart';
import 'package:untitled/LoginOTP.dart';
import 'package:untitled/LoginScreen.dart';
import 'package:untitled/OTP.dart';
import 'package:untitled/SignUp.dart';
import 'package:untitled/SplashScreen.dart';
import 'package:untitled/TestTask.dart';
import 'package:untitled/UI.dart';
import 'package:untitled/test.dart';

import 'Test/DropDown.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'CloseCalls Game LLP',
      home: EditProfile(),
    );
  }

}



