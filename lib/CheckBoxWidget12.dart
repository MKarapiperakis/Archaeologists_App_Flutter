// ignore_for_file: prefer_const_constructors, no_logic_in_create_state


import 'package:flutter/material.dart';
import 'InputTextWidget.dart';
import 'SearchWidget.dart';
import 'main.dart';

var items = ['Κόσκινο', 'Νεροκόσκινο'];
Map<String, bool> items2 = {};

class CheckBox12 extends StatefulWidget {
  const CheckBox12();

  
  @override
  State<StatefulWidget> createState() {

CheckB6["Κόσκινο"] = kosk;
CheckB6["Νεροκόσκινο"] = ner;
    

    return _MyWidgetState();
  }
}

var flag11 = false;
var flag22 = false;
bool koskino2 = kosk;
   bool nero2 = ner;

class _MyWidgetState extends State<CheckBox12> {
  



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
              value: koskino2,
              onChanged: (bool? value) {
                setState(() {
                  koskino2 = value!;
                  CheckB6["Κόσκινο"] = koskino2;
                  flag11 = true;
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
              value: nero2,
              onChanged: (bool? value) {
                setState(() {
                  nero2 = value!;
                  CheckB6["Νεροκόσκινο"] = nero2;
                  flag22 = true;
                });
              },
            ),
            
          ]),
     
          
        ])
      );
  }
}
