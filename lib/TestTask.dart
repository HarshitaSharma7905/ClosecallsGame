// import 'package:flutter/material.dart';
//
// class TestTask extends StatefulWidget {
//   const TestTask({Key? key}) : super(key: key);
//
//   @override
//   State<TestTask> createState() => _TestTaskState();
// }
//
// class _TestTaskState extends State<TestTask> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: BackButton(onPressed: () {
//
//         },),
//         backgroundColor: Colors.black,
//         title: Text('Energy Wallet'),
//       //  bolo
//       ),
//       body: SingleChildScrollView(
//         child: Column(children: [
//           Container(
//             margin: EdgeInsets.all(10),
//             height:350,
//             width: 1000,
//             padding: EdgeInsets.all(15),
//             decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),
//                 border: Border.all(color: Colors.black45),
//                 boxShadow: [BoxShadow(color: Colors.black26.withOpacity(0.2),
//                     spreadRadius: 0.5,blurRadius: 2,offset: Offset(0,5)),]),
//             child: Column(
//               children: [
//                 Container(child: Text('TOTAL BALANCE',
//                   style: TextStyle(fontSize: 14,color: Colors.black45),)),SizedBox(height: 5),
//                 Container(padding: EdgeInsets.all(5),
//                     child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text('₹',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black)),
//                           Text('10',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black)),])),
//                  ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.green),onPressed: () {},
//                      child: Text('ADD AMOUNT')),SizedBox(height: 5),
//                 Divider(indent: 5,endIndent: 5,color: Colors.black45,
//                         thickness: 0.3,
//                          ),
//                 Container(
//                   padding: EdgeInsets.all(10),
//                   child: Row(crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                              Container(
//                                padding: EdgeInsets.only(bottom: 8),
//                                child: Text('AMOUNT ADDED',
//                                 style: TextStyle(fontSize: 12,color: Colors.black45),),
//                              ),
//                         Row(
//                           children: [
//                           Text('₹',style: TextStyle(color: Colors.black,fontSize: 14),),
//                           Text('0',style: TextStyle(color: Colors.black,fontSize: 14),)
//                         ],)
//                       ],),
//                       Icon(Icons.change_circle,color: Colors.blue),
//                     ],
//                   ),
//                 ),
//                 Divider(indent: 5,endIndent: 5,color: Colors.black45,
//                   thickness: 0.3,
//                 ),
//                 Container(
//                   padding: EdgeInsets.all(10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//
//                         children: [
//                         Container(padding: EdgeInsets.only(bottom: 8),
//                             child: Text('WINNING',
//                               style: TextStyle(fontSize: 12,color: Colors.black45),)),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                           Text('₹',style: TextStyle(color: Colors.black,fontSize: 14),),
//                           Text('2.17',style: TextStyle(color: Colors.black,fontSize: 14),)
//                         ],)
//                       ],),
//                       Row(children: [ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.white),onPressed: () {},
//                           child: Text('WITHDRAW',style: TextStyle(color: Colors.black),)),
//                         Container(
//                             margin: EdgeInsets.only(left: 10),
//                             child: Icon(Icons.change_circle,color: Colors.blue)),],)
//                     ],
//                   ),
//                 ),Divider(indent: 5,endIndent: 5,color: Colors.black45,
//                   thickness: 0.3,
//                 ),
//                 Container(
//                   padding: EdgeInsets.all(10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Column(mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                         Container(padding: EdgeInsets.only(bottom: 8),
//                             child: Text('CASH BONUS',
//                               style: TextStyle(fontSize: 12,color: Colors.black45),)),
//                         Row(children: [
//                           Text('₹',style: TextStyle(color: Colors.black,fontSize: 14),),
//                           Text('0',style: TextStyle(color: Colors.black,fontSize: 14),)
//                         ],)
//                       ],),
//                       Icon(Icons.change_circle,color: Colors.blue),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.all(10),
//             height:60,
//             width: 1000,
//             decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),
//                 border: Border.all(color: Colors.black45),
//                 boxShadow: [BoxShadow(color: Colors.black26.withOpacity(0.2),
//                     spreadRadius: 0.5,blurRadius: 2,offset: Offset(0,5)),]),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                     padding: EdgeInsets.all(20),
//                     child: Text('MY RECENT TRANSACTION',style: TextStyle(fontSize: 12,color: Colors.black),)),
//                 Container(
//                     padding: EdgeInsets.all(20),
//                     child: Icon(Icons.arrow_forward)),
//               ],
//             ),
//           ),
//           Container(
//     margin: EdgeInsets.all(10),
//     height:80,
//     width: 1000,
//     decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),
//     border: Border.all(color: Colors.black45),
//     boxShadow: [BoxShadow(color: Colors.black26.withOpacity(0.2),
//     spreadRadius: 0.5,blurRadius: 2,offset: Offset(0,5)),]),
//     child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//     Container(
//     padding: EdgeInsets.all(20),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text('MANAGE PAYMENTS',style: TextStyle(fontSize: 12,color: Colors.black),),
//         Text('Add/Remove Cards,Wallets etc',style: TextStyle(color: Colors.black26),)
//       ],
//     )),
//     Container(
//     padding: EdgeInsets.all(20),
//     child: Icon(Icons.arrow_forward)),
//     ],
//     ),
//     ),
//
//
//         ]),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('hello'),
    );
  }
}

