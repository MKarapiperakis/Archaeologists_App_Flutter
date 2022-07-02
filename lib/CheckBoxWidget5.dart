// ignore_for_file: prefer_const_constructors, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'main.dart';

var items = [];
Map<String, bool> items2 = {};

bool dropdownflag = false;

class CheckBox5 extends StatefulWidget {
  const CheckBox5();

  @override
  State<StatefulWidget> createState() {
    if (dropdownflag == false) {
      for (int i = 0; i < anask!.length; i++) {
        String value = anask![i].toString();
        items.add(
          value.replaceAll('[', '').replaceAll(']', '').replaceAll('  ', ''),
        );
        items2[items.elementAt(i)] = false;
      }
      dropdownflag = true;
    }
    return _MyWidgetState();
  }
}

class _MyWidgetState extends State<CheckBox5> {


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

    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        for (int i = 0; i < items.length; i++)
          Column(children: [
            Text(
              items[i],
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: (items2[items.elementAt(i)]),
              onChanged: (bool? value) {
                setState(() {
                  items2[items.elementAt(i)] = value!;
                  CheckBox5Value = items2;
                });
              },
            ),
          ]),
      ]),
    );
  }
}
