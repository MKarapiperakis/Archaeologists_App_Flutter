// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CheckBox6 extends StatefulWidget {
  const CheckBox6();

  @override
  State<StatefulWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CheckBox6> {
  bool koskino = false;
  bool nero = false;

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

    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Κόσκινο",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 18)),
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: koskino,
            onChanged: (bool? value) {
              setState(() {
                koskino = value!;
              });
            },
          ),
          Text(
            "Νεροκόσκινο",
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 18),
          ),
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: nero,
            onChanged: (bool? value) {
              setState(() {
                nero = value!;
              });
            },
          ),
        ]);
  }
}
