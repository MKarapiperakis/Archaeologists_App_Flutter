// ignore_for_file: prefer_const_constructors, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'main.dart';

String dropdownvalue = '';
bool dropdownflag = false;

var items = [
  '',
];

class DropDown6 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    if (dropdownflag == false) {
      for (int i = 0; i < Synthetic!.length; i++) {
        String value = Synthetic![i].toString();
        items.add(
          value.replaceAll('[', '').replaceAll(']', '').replaceAll('  ', ''),
        );
      }
      dropdownflag = true;
    }
    return DropDownState();
  }
}

class DropDownState extends State<DropDown6> {
  // var items = [
  //   '',
  //   'Υπόλευκο',
  //   'Φαιό',
  //   'Ερυθρωπό',
  // ];

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
      if (flag == false)
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
                });
              },
              iconSize: 27,
              iconEnabledColor: Colors.white,
              icon: Icon(Icons.arrow_drop_down_circle),
              borderRadius: BorderRadius.circular(30.0),
            )),
      SizedBox(
        width: 15.0,
      ),
      Row(children: [
        Padding(padding: EdgeInsets.all(5)),
        Text(
          "Άλλο",
          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.w600, fontSize: 20),
        ),
        Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: option,
          onChanged: (bool? value) {
            setState(() {
              option = value!;
              if (flag == true)
                flag = false;
              else
                flag = true;
            });
          },
        ),
      ]),
      if (flag == true)
        Container(
          margin: EdgeInsets.all(10),
          child: TextFormField(
            maxLength: 20,
            keyboardType: TextInputType.text,
            textAlign: TextAlign.left,
            autocorrect: true,
            style:
                TextStyle(fontSize: 20, color: Color.fromARGB(255, 43, 36, 36)),
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: "Άλλη επιλογή",
              labelStyle:
                  TextStyle(fontSize: 20, color: Colors.blueAccent[400]),
            ),
          ),
        )
    ]);
  }
}
