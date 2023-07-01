import 'package:flutter/material.dart';
import 'package:untitled/HomePage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home:SplashState() ,
    );
  }
}
class SplashState extends StatefulWidget {
  const SplashState({Key? key}) : super(key: key);

  @override
  State<SplashState> createState() => _SplashStateState();
}

class _SplashStateState extends State<SplashState> {
  @override
  void initState(){
    super.initState();
    _navigateToHome();
  }
  Future<void> _navigateToHome() async
  {
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
  }
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child:Container(
         width: 200,
         height: 200,
         child: Image.asset('assets/images/logo.png'),
       ),
     ),
    );
  }
}