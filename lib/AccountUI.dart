// import 'package:flutter/material.dart';
// import 'package:untitled/HomePage.dart';
//
// class Account extends StatelessWidget {
//   const Account({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       color: Colors.black,
//       home: AccountPage(),
//     );
//   }
// }
// class AccountPage extends StatefulWidget {
//   const AccountPage({Key? key}) : super(key: key);
//
//   @override
//   State<AccountPage> createState() => _AccountPageState();
// }
//
// class _AccountPageState extends State<AccountPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         leading: BackButton(color: Colors.black,onPressed: () {
//           Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
//           },),title: Center(child: Text('Profile page'),),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                       width: 100,
//                       height: 100,
//                       decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle),
//                       child: Image.asset('assets/images/person.png')),SizedBox(width: 50),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(height: 10),
//                       Text('Johnson King'),SizedBox(height: 10),
//                       Text('johnking@gmail.com'),SizedBox(height: 10),
//                       ElevatedButton(onPressed: () {}, child: Text('Edit Profile'),
//                           style: ButtonStyle( backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
//                        )),SizedBox(height: 10),
//                     ],
//                   )
//                 ],
//               )
//             ],
//           ),
//
//         Expanded(
//           child: Row(
//             mainAxisAlignment:
//             children: [
//               Icon(Icons.heart_broken),
//               SizedBox(width: 20),
//               Text('favourites'),SizedBox(width: 100),
//               Icon(Icons.arrow_forward_ios),
//             ],
//           ),
//         ),SizedBox(height: 20),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.download),SizedBox(width: 10),
//             Text('Download'),SizedBox(width: 100),
//             Icon(Icons.arrow_forward_ios),
//           ],
//         ),SizedBox(height: 20),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.download),SizedBox(width: 10),
//             Text('Language'),SizedBox(width: 100),
//             Icon(Icons.circle_notifications_outlined),
//           ],
//         ),SizedBox(height: 20),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.location_city),SizedBox(width: 10),
//             Text('Location'),SizedBox(width: 100),
//             Icon(Icons.arrow_forward_ios),
//           ],
//         ),SizedBox(height: 20),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.display_settings),SizedBox(width: 10),
//             Text('Display'),SizedBox(width: 100),
//             Icon(Icons.arrow_forward_ios),
//           ],
//         ),SizedBox(height: 20),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.heart_broken),SizedBox(width: 10),
//             Text('Feed Preference'),SizedBox(width: 90),
//             Icon(Icons.phone_android),
//           ],
//         ),SizedBox(height: 20),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.subscriptions),SizedBox(width: 10),
//             Text('Subscription'),SizedBox(width: 100),
//             Icon(Icons.arrow_forward_ios),
//           ],
//         ),SizedBox(height: 20),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.format_clear_outlined),SizedBox(width: 10),
//             Text('Clear Cache'),SizedBox(width: 100),
//             Icon(Icons.arrow_forward_ios),
//           ],
//         ),SizedBox(height: 20),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.history),SizedBox(width: 10),
//             Text('Clear History'),SizedBox(width: 100),
//             Icon(Icons.arrow_forward_ios),
//           ],
//         ),SizedBox(height: 20),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.logout),SizedBox(width: 10),
//             Text('Log Out'),SizedBox(width: 100),
//             Icon(Icons.arrow_forward_ios),
//           ],
//         ),
//       ],
//     ),
//     );
//   }
// }
//
//
