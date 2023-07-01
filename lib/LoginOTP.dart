import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/DashBoard.dart';
import 'package:untitled/HomePage.dart';
import 'package:untitled/OTP.dart';

class LoginOTP extends StatefulWidget {
  const LoginOTP({Key? key}) : super(key: key);

  @override
  State<LoginOTP> createState() => _LoginOTPState();
}
late String mobile;
late String otp;
class _LoginOTPState extends State<LoginOTP> {
  List<String> otpList=[];
  List<TextEditingController> otpControllers = [];
  List<FocusNode> otpFocusNodes = [];
  int numberOfFields = 6;

  void initState() {
    super.initState();
    for (int i = 0; i < numberOfFields; i++) {
      otpControllers.add(TextEditingController());
      otpFocusNodes.add(FocusNode());
    }
  }

  @override
  void dispose() {
    for (var controller in otpControllers) {
      controller.dispose();
    }
    for (var focusNode in otpFocusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final Map<String,dynamic> argument = ModalRoute.of(context)?.settings.arguments as Map<String,dynamic>;
    mobile=argument["mobile"];
    otp=argument["otp"];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('Login OTP Verification')),
        leading: BackButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      },),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('OTP sent to +91-$mobile',)),
          Center(
            child: Container(
              width: 400,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: List.generate(numberOfFields, (index) {
                  return Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: 40, // Adjust the width as per your design
                      child: TextField(
                        controller: otpControllers[index],
                        focusNode: otpFocusNodes[index],
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        onChanged: (value) {
                          if (value.isNotEmpty && index < numberOfFields - 1) {
                            otpFocusNodes[index].unfocus();
                            FocusScope.of(context).requestFocus(otpFocusNodes[index + 1]);
                          } else if (value.isEmpty && index > 0) {
                            otpFocusNodes[index].unfocus();
                            FocusScope.of(context).requestFocus(otpFocusNodes[index - 1]);
                          }
                        },
                        onSubmitted: (value) {
                          if (value.isEmpty && index > 0) {
                            otpFocusNodes[index].unfocus();
                            FocusScope.of(context).requestFocus(otpFocusNodes[index - 1]);
                          }
                        },
                        decoration: InputDecoration(
                          counterText: '', // Hide the character counter
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 400,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Flexible(child:  Text("Didn't receive OTP ?" )),
                    TextButton(onPressed: (){}, child: const Text('Resend OTP')),
                    Text('in 50 second')
                  ]),
            ),

          ),SizedBox(height: 20),
          ElevatedButton(onPressed: () {
          print(otpControllers);
            for(int i=0;i<=otpControllers.length-1;i++){
              otpList.add(otpControllers[i].text);
            }
            String currentotp = otpList.join().toString();
            print(currentotp);
            print(otp);
            if(currentotp == otp){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard()));
            }else{
              //popup
              Fluttertoast.showToast(
                  msg: "Please Enter Correct OTP",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            }
          }, child: Text('SUBMIT'),style: ButtonStyle( backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            padding: MaterialStateProperty.all(const EdgeInsets.only(left: 30,right: 30,top: 8,bottom: 8)),
    shape: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))))),)
        ],
      ),
    );
  }
}
