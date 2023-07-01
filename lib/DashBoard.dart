import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;

  void _onItemTapped(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text('Bottom Navigation Example')),
    body: Center(
    child: _getPage(_selectedIndex),
    ),
    bottomNavigationBar: BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.business),
    label: 'Business',
    ),
      BottomNavigationBarItem(
        icon: Icon(Icons.school),
        label: 'School',
      ),
    ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      onTap: _onItemTapped,
    ),
    );
  }
  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return HomeWidget();
      case 1:
        return BusinessWidget();
      case 2:
        return SchoolWidget();
      default:
        return Container();
    }
     }}
class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home'),
    );
  }
}

class BusinessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Business'),
    );
  }
}

class SchoolWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('School'),
    );
  }
}


