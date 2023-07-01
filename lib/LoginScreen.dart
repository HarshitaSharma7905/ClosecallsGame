import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled/HomePage.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/LoginOTP.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      home: LoginScreenPage(),
    );
  }
}
late String mobile;
late String otp;
class LoginScreenPage extends StatefulWidget {
  const LoginScreenPage({Key? key}) : super(key: key);
  @override
  State<LoginScreenPage> createState() => _LoginScreenPageState();
  }
  class _LoginScreenPageState extends State<LoginScreenPage> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading:BackButton(onPressed:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
        } ,),
        title: Center(child: Text('Sign Up')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Container(
                margin: EdgeInsets.all(16.0),
                height: 150,
                width: 150,

                child: Image.asset('assets/images/login.png'),
              ),

            Container(
                width: 300.0,
                height: 100,
                padding: EdgeInsets.all(10),
                child: TextField(
                  maxLength: 10,

                  onChanged: (value) {
                    mobile=value.toString();
                  },
                    decoration: InputDecoration(
                      labelText: 'User Mobile Number',
                    prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: Colors.black),
                    ),)
                ),
            ),
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.black,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),)),
                  onPressed:isLoading ? null:login,
                  child: isLoading ? CircularProgressIndicator():Text('Get OTP')),
            ])]
        )));
       }
       Future<void> login() async{
         setState(() {
           isLoading=true;
         });
         Random random = Random();
         int min = 100000; // Minimum 6-digit number
         int max = 999999; // Maximum 6-digit number
         int randomNumber = min + random.nextInt(max - min);
         otp=randomNumber.toString();
         var url=Uri.parse("https://closecalls.in/api/userLogin");
         var para={"mobile":mobile,"otp":otp};
         final response= await http.post(url,body: para);
         var data= jsonDecode(response.body);
         // if(data['status']=='1'){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginOTP(),
               settings: RouteSettings(arguments: {"mobile":mobile,"otp":otp})));
         // }
       }
     }

