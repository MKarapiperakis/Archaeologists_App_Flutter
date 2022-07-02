// ignore_for_file: prefer_const_constructors, no_logic_in_create_state

import 'package:application/FloatingActionButton5Widget.dart';
import 'package:flutter/material.dart';
import 'main.dart';

String dropdownvalue = '';

var items = [''];
bool dropdownflag = false;

class DropDown extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    if (dropdownflag == false) {
      for (int i = 0; i < SMType!.length; i++) {
        String value = SMType![i].toString();
        items.add(
          value.replaceAll('[', '').replaceAll(']', '').replaceAll('  ', ''),
        );
      }
      dropdownflag = true;
    }

    return DropDownState();
  }
}

class DropDownState extends State<DropDown> {
  DropDownState();

  @override
  Widget build(BuildContext context) {
    return Container(
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

              arr[0] = dropdownvalue;
            });
          },
          iconSize: 27,
          iconEnabledColor: Colors.white,
          icon: Icon(Icons.arrow_drop_down_circle),
          borderRadius: BorderRadius.circular(10.0),
        ));
  }
}
