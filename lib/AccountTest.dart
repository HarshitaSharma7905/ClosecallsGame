import 'package:flutter/material.dart';

class AccountTest extends StatelessWidget {
  const AccountTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _AccountTest(),
    );
  }
}
class _AccountTest extends StatefulWidget {
  const _AccountTest({Key? key}) : super(key: key);

  @override
  State<_AccountTest> createState() => _AccountTestState();
}

class _AccountTestState extends State<_AccountTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'),backgroundColor: Colors.black,
        centerTitle: true,
        actions: [IconButton(onPressed: () {

        }, icon: Icon(Icons.settings))],
        leading:BackButton(onPressed: () {

      },) ,),
      body: SingleChildScrollView(
        child: Container(
          width: 1000,
          margin:EdgeInsets.all(14) ,

          child: Column(
            children: [
              Row(children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 100,height: 100,
                  decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 2,spreadRadius: 2,offset: Offset(0,3))]),
                child: Image.asset('assets/images/person.png'),
                ),
                Expanded(
                  child: Container(width: 700,
                    height: 150,
                    padding: EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Johnson king',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                        Text('jonkung@gmail.com'),
                        SizedBox(height: 10),
                        ElevatedButton(onPressed: () {

                        }, child:Text('Edit Profile'),)
                      ],
                    ),
                  ),
                ),
              ],),
              Container(
                width: 1000,
                height: 50,
               padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.favorite),
                        SizedBox(width: 10,),
                        Text('Favorite',style: TextStyle(fontSize: 14),),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios),

                  ],),
              ),
              Container(
                width: 1000,
                height: 50,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.download),
                        SizedBox(width: 10,),
                        Text('Dowmloads',style: TextStyle(fontSize: 14),),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],),
              ),
              Divider(color: Colors.blueGrey,thickness: 0.2,indent: 2,endIndent: 2,),
              Container(
                width: 1000,
                height: 50,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.language),
                        SizedBox(width: 10,),
                        Text('Language',style: TextStyle(fontSize: 14),),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],),
              ),
              Container(
                width: 1000,
                height: 50,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        SizedBox(width: 10,),
                        Text('Location',style: TextStyle(fontSize: 14),),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],),
              ),
              Container(
                width: 1000,
                height: 50,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.display_settings),
                        SizedBox(width: 10,),
                        Text('Display',style: TextStyle(fontSize: 14),),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],),
              ),
              Container(
                width: 1000,
                height: 50,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.feed_outlined),
                        SizedBox(width: 10,),
                        Text('Feed Preference',style: TextStyle(fontSize: 14),),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],),
              ),
              Container(
                width: 1000,
                height: 50,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.subscriptions),
                        SizedBox(width: 10,),
                        Text('Subscription',style: TextStyle(fontSize: 14),),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],),
              ),
              Divider(color: Colors.blueGrey,thickness: 0.2,indent: 2,endIndent: 2,),

              Container(
                width: 1000,
                height: 50,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.cached),
                        SizedBox(width: 10,),
                        Text('Clear Cache',style: TextStyle(fontSize: 14),),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],),
              ),
              Container(
                width: 1000,
                height: 50,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.history),
                        SizedBox(width: 10,),
                        Text('Clear History',style: TextStyle(fontSize: 14),),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],),
              ),
              Container(
                width: 1000,
                height: 50,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.logout),
                        SizedBox(width: 10,),
                        Text('Logout',style: TextStyle(fontSize: 14),),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],),
              ),

                    ],
          ),
        ),
      ),
    );
  }
}

