// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class RadioButton4 extends StatefulWidget {
  const RadioButton4();

  @override
  State<StatefulWidget> createState() => _MyWidgetState();
}

var items = ["Ναι", "Οχι"];
var _value;
var flag = false;

bool asbestolithos = false;
bool marmaro = false;
bool ammouda = false;

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

class _MyWidgetState extends State<RadioButton4> {
  @override
  Widget build(BuildContext context) {
    return (Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 15.0,
              ),
              Text(
                "Ναι",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Radio(
                activeColor: Colors.greenAccent[700],
                value: 1,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                    flag = true;
                  });
                },
              ),
              SizedBox(
                width: 15.0,
              ),
              Text("Όχι",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontSize: 20)),
              Radio(
                activeColor: Colors.greenAccent[700],
                value: 2,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                    flag = false;
                  });
                },
              ),
            ],
          ),
          if (flag == true)
            Column(children: [
              Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    maxLength: 50,
                    minLines: 3,
                    keyboardType: TextInputType.text,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    autocorrect: true,
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 43, 36, 36)),
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: "Λεπτομέρειες",
                      labelStyle: TextStyle(
                          fontSize: 20, color: Colors.blueAccent[400]),
                    ),
                  )),
            ])
        ]));
  }
}
