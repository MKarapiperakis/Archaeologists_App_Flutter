// ignore_for_file: prefer_const_constructors, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'FloatingActionButton5Widget.dart';
import 'main.dart';

String dropdownvalue = '';
bool dropdownflag = false;

var items = [
  '',
];

class DropDown23 extends StatefulWidget {
   DropDown23(first) {
    uarr[3] = first;
  }
  @override
  State<StatefulWidget> createState() {
    if (dropdownflag == false) {
      for (int i = 0; i < Structure!.length; i++) {
        String value = Structure![i].toString();
        items.add(
          value.replaceAll('[', '').replaceAll(']', '').replaceAll('  ', ''),
        );
      }
      dropdownflag = true;
    }
    return DropDownState();
  }
}

class DropDownState extends State<DropDown23> {
  // var items = [
  //   '',
  //   'Ομοιογενής',
  //   'Ανομοιογενής',
  //   'Πολύ συμπαγής',
  //   'Συμπαγής',
  //   'Αρκετά συμπαγής',
  //   'Χαλαρή',
  //   'Πολύ χαλαρή'
  // ];

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
                uarr[3] = dropdownvalue;
            });
          },
          iconSize: 27,
          iconEnabledColor: Colors.white,
          icon: Icon(Icons.arrow_drop_down_circle),
          borderRadius: BorderRadius.circular(30.0),
        ));
  }
}
