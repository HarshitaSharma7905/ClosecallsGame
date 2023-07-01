import 'package:flutter/material.dart';
import 'package:untitled/LoginScreen.dart';
import 'package:untitled/SignUp.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         home: Login(),
    );
  }
}
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
             height: 150,
               width: 150,
               child: Image.asset('assets/images/logo.png'),
                 ),
            Container(
                child:Text('Let the Nearest Score Win',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),)
            ),
            Container(
                 height: 200,
                 width: 200,
                 child: Image.asset('assets/images/gameplayer.png') ,
            ),
            ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),)),
                onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));} ,
                child: Text('Get Started')),
            Container(
              margin: EdgeInsets.all(16.0),
             child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));},child: Text('Existing User? Login here',style: TextStyle(color: Colors.black),)),
            )
         ]),
      )
    );
  }
}
