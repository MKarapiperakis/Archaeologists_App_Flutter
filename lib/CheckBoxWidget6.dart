// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'InputTextWidget.dart';
import 'main.dart';

var items = ['Κόσκινο', 'Νεροκόσκινο'];
Map<String, bool> items2 = {};

class CheckBox6 extends StatefulWidget {
  const CheckBox6();
  
  
  @override
  State<StatefulWidget> createState() => _MyWidgetState();
}

var flag1 = false;
var flag2 = false;


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

    return (Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
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
                  CheckBox6Value["Κόσκινο"] = koskino;
                  flag1 = true;
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
                  CheckBox6Value["Νεροκόσκινο"] = nero;
                  flag2 = true;
                });
              },
            ),
            
          ]),
     
          
        ])
      );
  }
}
