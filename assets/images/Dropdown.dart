import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  @override
  _MyDropdownState createState() => _MyDropdownState();
}

class _MyDropdownState extends State<Dropdown> {
  String dropdownValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.black, fontSize: 16),
      onChanged: (newValue) {
        setState(() {
          dropdownValue = '';
        });
      },
      items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dropdown Example'),
        ),
        body: Center(
          child: Dropdown(),
        ),
      ),
    );
  }
}
