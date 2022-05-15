// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DropDown13 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DropDownState();
  }
}

class DropDownState extends State<DropDown13> {
  String dropdownvalue = 'Ξηρές';

  var items = [
    'Ξηρές',
    'Υγρές'
  ];

  bool flag = false;
  bool option = false;
  var _value;

  DropDownState();

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.green;
    }

    return Column(children: [
      DropdownButton(
        dropdownColor: Colors.white,
        alignment: Alignment.center,
        style: TextStyle(
          color: Colors.blue,
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
          });
        },
        iconSize: 27,
        iconEnabledColor: Colors.blue,
        icon: Icon(Icons.arrow_drop_down_circle),
        borderRadius: BorderRadius.circular(10.0),
      ),
    ]);
  }
}
