// ignore_for_file: prefer_const_constructors, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'FloatingActionButton5Widget.dart';
import 'main.dart';

String dropdownvalue = '';
bool dropdownflag = false;

var items = [
  '',
];

class DropDown7 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    if (dropdownflag == false) {
      for (int i = 0; i < Coating_material!.length; i++) {
        String value = Coating_material![i].toString();
        items.add(
          value.replaceAll('[', '').replaceAll(']', '').replaceAll('  ', ''),
        );
      }
      dropdownflag = true;
    }
    return DropDownState();
  }
}

class DropDownState extends State<DropDown7> {
  // var items = ['Ασβεστοκονίαμα', 'Υδραυλικό Κονίαμα'];

  bool flag = false;
  bool option = false;
  var _value;

  DropDownState();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          //container xrhsimo widget
          width: double.infinity, //center
          padding: EdgeInsets.all(10),
          child: Text(
            "Υλικό",
            style: TextStyle(
                fontSize: 20,
                color: Colors.greenAccent[700],
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          )),
      Container(
          padding: EdgeInsets.all(2),
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
                  arr[6] = dropdownvalue;
              });
            },
            iconSize: 27,
            iconEnabledColor: Colors.white,
            icon: Icon(Icons.arrow_drop_down_circle),
            borderRadius: BorderRadius.circular(30.0),
          ))
    ]);
  }
}
