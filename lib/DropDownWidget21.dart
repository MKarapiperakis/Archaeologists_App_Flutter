// ignore_for_file: prefer_const_constructors, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'FloatingActionButton5Widget.dart';
import 'main.dart';

String dropdownvalue = '';
bool dropdownflag = false;

//var items = ['Β', 'Ν', 'Α', 'Δ', 'ΒΑ', 'ΒΔ', 'ΝΑ', 'ΝΔ'];

var items = [
  '',
];

class DropDown21 extends StatefulWidget {
  DropDown21(first) {
    uarr[1] = first;
  }

  @override
  State<StatefulWidget> createState() {
    if (dropdownflag == false) {
      for (int i = 0; i < Direction!.length; i++) {
        String value = Direction![i].toString();
        items.add(
          value.replaceAll('[', '').replaceAll(']', '').replaceAll('  ', ''),
        );
      }
      dropdownflag = true;
    }
    return DropDownState();
  }
}

class DropDownState extends State<DropDown21> {
  DropDownState();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.greenAccent[400]),
        child: DropdownButton(
          dropdownColor: Colors.greenAccent[400],
          alignment: Alignment.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          value: dropdownvalue,
          items: items.map((String items) {
            return DropdownMenuItem(value: items, child: Text(items));
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownvalue = newValue!;
              uarr[1] = dropdownvalue;
            });
          },
          iconSize: 27,
          iconEnabledColor: Colors.white,
          icon: Icon(Icons.arrow_drop_down_circle),
          borderRadius: BorderRadius.circular(10.0),
        ));
  }
}
