// import 'package:flutter/material.dart';
// class BottomNavigation extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'My App',
//       home: MyBottomNavigationBar(),
//     );
//   }
// }
// class MyBottomNavigationBar extends StatefulWidget {
//   @override
//   _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
// }
//
// class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
//   int _currentIndex = 0;
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:const Text('Bottom Navigation Bar'),
//       ),
//       body: Center(
//         child: _getPage(_currentIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _onItemTapped,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
//   Widget _getPage(int index) {
//     switch (index) {
//       case 0:
//         return Text('Home Page');
//       case 1:
//         return Text('Search Page');
//       case 2:
//         return Text('Profile Page');
//       default:
//         return Text('Invalid Page');
//     }
//
//   }
// }
