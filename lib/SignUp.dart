import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled/HomePage.dart';
import 'package:http/http.dart' as http;

import 'OTP.dart';


class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      home: SignUpPage(),
    );
  }
}
String mobile="";
String otp="";
class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}
class _SignUpPageState extends State<SignUpPage> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: BackButton(onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },),
        title: Center(child: Text('Sign Up')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.all(16.0),
                height: 150,
                width: 150,
                child: Image.asset('assets/images/user.png')
            ),
            Container(
                width: 400.0,
                child: TextField(
                  onChanged: (value) {
                    mobile=value.toString();
                  },
                  maxLength: 10,
                  maxLines: 1,
                  decoration: InputDecoration(labelText: 'User Mobile Number',

                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(margin: EdgeInsets.all(16.0),
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),))
                      , onPressed: isLoading ? null:signup,
                      child: isLoading
                          ? CircularProgressIndicator()
                          : Text('Send OTP'),)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> signup() async{
    setState(() {
      isLoading = true;
    });
    var url = Uri.parse("https://closecalls.in/api/registerMobile");
    var body = {"mobile": mobile};
    final response = await http.post(url, body: body);
    var data=jsonDecode(response.body);
     otp=data['otp'].toString();
     Navigator.push(
       context,
       MaterialPageRoute(
         builder: (context) => const Otp(),
         settings: RouteSettings(arguments: {
           'mobile': mobile,
           'otp': otp,
         }),
       ),
     );



    }
  }









