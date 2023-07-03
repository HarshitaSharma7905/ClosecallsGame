import 'package:flutter/material.dart';

import 'HomePage.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      home: Edit(),
    );
  }
}
class Edit extends StatefulWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Profile'),centerTitle: true,backgroundColor: Colors.black,
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.check,color: Colors.green))],
        leading: BackButton(onPressed:() {}, ),
      ),
      body: Container(
        width: 1000,
        margin: EdgeInsets.all(10),
        color:Colors.blueGrey ,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: 100,
              height: 100,
             decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle,
                 boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 2,spreadRadius: 2,offset: Offset(0,2))]),
            ),
          ],
        ),
      ),

    );

  }
}
