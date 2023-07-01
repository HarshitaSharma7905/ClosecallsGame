import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String selectcountry='Select Country';
  List<String> countries = ['US','INDIA','Pakistan','nepal'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 600,
        height: 400,
        padding: EdgeInsets.all(10),
        color: Colors.teal,
        child: DropdownSearch<String>(
          popupTitle: Center(child: Text('Select Your Country')),
          mode: Mode.BOTTOM_SHEET,
          selectedItem: selectcountry,
          items: countries,
        )
      ),
    );
  }
}
