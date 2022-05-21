import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton();

  @override
  State<StatefulWidget> createState() => _MyWidgetState();
}

var items = ["Ναι", "Οχι"];
bool _value = false;
var val;

class _MyWidgetState extends State<RadioButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      ListTile(
        title: Text("Ναι"),
        leading: Radio(
          value: -1,
          groupValue: val,
          onChanged: (value) {
            setState(() {
              val = value;
            });
          },
          activeColor: Colors.green,
        ),
      )
    ]));
  }
}
