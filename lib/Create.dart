import 'package:flutter/material.dart';

class Create extends StatelessWidget {
  const Create({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CreateProfile(),
    );
  }
}
class CreateProfile extends StatefulWidget {
  const CreateProfile({Key? key}) : super(key: key);

  @override
  State<CreateProfile> createState() => _CreateProfileState();
  }
  class _CreateProfileState extends State<CreateProfile> {
    var  _value=null;
    var _city=null;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child:Center(
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: Text('Lets Create Your Profile',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              ),
            ),),
          Container(
            height: 100,
            width: 200,
            margin: EdgeInsets.all(8.0),
            child: Image.asset('assets/images/portfolio.png'),
          ),
          Container(
            width: 300,
              margin: EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(labelText: 'Full Name',
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(color: Colors.black),
              ),
            ),)),
          Container(
              width: 300,
              margin: EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                hint: Text('Select Gender'),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  border: OutlineInputBorder(),
                ),
                value: _value,
                items: [
                  DropdownMenuItem(child: Text('Male'),value: -1,),
                  DropdownMenuItem(child: Text('Female'),value: 0,),
                  DropdownMenuItem(child: Text("Don't Preferred to say"),value: 1,),
              ],
                onChanged: (value) {},
              )),
          Container(
              width: 300,
              margin: EdgeInsets.all(8.0),
              child:DropdownButtonFormField(
                hint: Text('Select your city'),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  border: OutlineInputBorder(),),
    value: _city,
    items: [
      DropdownMenuItem(child: Text('Mumbai'),value: -1,),
      DropdownMenuItem(child: Text('Pune'),value: 0,),
      DropdownMenuItem(child: Text('Delhi'),value: 1,),
      DropdownMenuItem(child: Text('Hydrabad'),value: 2,),
      DropdownMenuItem(child: Text('Delhi'),value: 3,),
    ],onChanged: (value){},
                )),
          Container(
              width: 300,
              margin: EdgeInsets.all(8.0),
              child:DropdownButtonFormField(
                hint: Text('Select your Location'),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  border: OutlineInputBorder(),),
                value: _city,
                items: [
                  DropdownMenuItem(child: Text('Airoli'),value: -1,),
                  DropdownMenuItem(child: Text('vashi'),value: 0,),
                  DropdownMenuItem(child: Text('Neral'),value: 1,),
                  DropdownMenuItem(child: Text('Koperkhairane'),value: 2,),
                  DropdownMenuItem(child: Text('Turbhe'),value: 3,),
                ],onChanged: (value){},
              )),
           Container(
               width: 300,
               child:TextField(decoration: InputDecoration(labelText: 'Select Location',
                prefixIcon: Icon(Icons.arrow_drop_down),
                   border: OutlineInputBorder(),
                   focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(8.0),
                   borderSide: BorderSide(color: Colors.black),
    ),
    ))
           )],
      ),
    );
  }
}
