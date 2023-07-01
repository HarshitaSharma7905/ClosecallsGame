
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/HomePage.dart';
import 'package:untitled/LoginScreen.dart';


class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));

        },),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('OTP Verification'),
        centerTitle: true,
      ),
      body:const _OTP(),
    );
  }
}
late String mobile;
late String otp;
late String currentOtp;
class _OTP extends StatefulWidget {
  const _OTP({Key? key}) : super(key: key);

  @override
  State<_OTP> createState() => _OTPState();
}

class _OTPState extends State<_OTP> {
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
    final Map<String, dynamic> arguments =
    ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    mobile = arguments['mobile'];
    otp = arguments['otp'];


    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top:25),
          child: Center(
            child: Text('OTP Sent to $mobile'),
          ),
        ),
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

        ),SizedBox(
          height: 15,
        ),
        ElevatedButton(style: ButtonStyle(elevation: MaterialStateProperty.all<double>(24.0),
            shadowColor: MaterialStateProperty.all<Color>(Colors.black54),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            padding: MaterialStateProperty.all(const EdgeInsets.only(left: 30,right: 30,top: 8,bottom: 8)),
            shape: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))))),onPressed: (){
          for(int i=0;i<=otpControllers.length-1;i++){
            otpList.add(otpControllers[i].text);
          }
          currentOtp=otpList.join().toString();
          if(otp==currentOtp)
          {
            registerUser();
          }
          else
          {
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

        }, child: const Text('Submit OTP',style: TextStyle(fontSize: 18),))],
    );
  }
  Future<void> registerUser() async{
    var url=Uri.parse('https://closecalls.in/api/registerUser');
    var body={"mobile":mobile};
    final response=await http.post(url,body: body);
    // if(response.statusCode==200)
    // {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("You have Registered successfully"),
            content: Text("You can login by clicking link below"),
            actions: <Widget>[
              TextButton(
                child: Text("Login"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen())); // Close the dialog
                },
              ),
              TextButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
              ),
            ],
          );
        },
      );

    // }
    // else
    // {
    //   //popup
    //   Fluttertoast.showToast(
    //       msg: "User Already Exists",
    //       toastLength: Toast.LENGTH_SHORT,
    //       gravity: ToastGravity.CENTER,
    //       timeInSecForIosWeb: 1,
    //       backgroundColor: Colors.red,
    //       textColor: Colors.white,
    //       fontSize: 16.0
    //   );
    // }
  }
}
