// ignore_for_file: prefer_initializing_formals, prefer_const_constructors

import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  var text;
  var length;
  var type;

  InputText(text, length,type) {
    this.text = text;
    this.length = length;
    this.type = type;
  }

  @override
  Widget build(BuildContext context) {
    if (length < 60 && type == 0) {
      return Container(
        margin: EdgeInsets.all(10),
        child: TextFormField(
          maxLength: length,
          textAlign: TextAlign.left,
          autocorrect: true,
          keyboardType: TextInputType.number,
          style:
              TextStyle(fontSize: 20, color: Color.fromARGB(255, 43, 36, 36)),
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            labelText: text,
            labelStyle: TextStyle(fontSize: 20, color: Colors.blueAccent[400]),
          ),
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.all(10),
        child: TextFormField(
          maxLength: length,
          minLines: 3,
          keyboardType: TextInputType.text,
          maxLines: null,
          textAlign: TextAlign.left,
          autocorrect: true,
          style:
              TextStyle(fontSize: 20, color: Color.fromARGB(255, 43, 36, 36)),
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            labelText: text,
            labelStyle: TextStyle(fontSize: 20, color: Colors.blueAccent[400]),
          ),
        ),
      );
    }
  }
}
