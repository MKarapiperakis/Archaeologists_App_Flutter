// ignore_for_file: prefer_initializing_formals, prefer_const_constructors

import 'package:flutter/material.dart';
import 'SearchWidget.dart';
import 'SkeletosSearchWidget.dart';
import 'main.dart';
import 'RadioButtonWidget.dart';

class InputText extends StatelessWidget {
  var text;
  var length;
  var type;
  var count;
  var edit;
  var edit_text;

  InputText(text, length, type, count, edit, edit_text) {
    this.text = text;
    this.length = length;
    this.type = type;
    this.count = count;
    this.edit = edit;
    this.edit_text = edit_text;
    
     arr2_2[count] = edit_text;
  }

  @override
  Widget build(BuildContext context) {
    if (edit == 0) {
      if (length < 60 && type == 0 && count != 29) {
        return Container(
          margin: EdgeInsets.all(10),
          child: TextFormField(
            //controller: TextEditingController(text: "test"),
            maxLength: length,
            textAlign: TextAlign.left,
            autocorrect: true,
            keyboardType: TextInputType.number,
            onChanged: (text) {
              arr2[count] = '$text';
            },
            style:
                TextStyle(fontSize: 20, color: Color.fromARGB(255, 43, 36, 36)),
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: text,
              labelStyle:
                  TextStyle(fontSize: 20, color: Colors.blueAccent[400]),
            ),
          ),
        );
      } else if (count == 29) //Ημερομηνία
      {
        DateTime now = DateTime.now();

        String convertedDateTime =
            "${now.year.toString()}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}";

        return Container(
          margin: EdgeInsets.all(10),
          child: TextFormField(
            maxLength: length,
            textAlign: TextAlign.left,
            autocorrect: true,
            keyboardType: TextInputType.number,
            onChanged: (text) {
              arr2[count] = '$text';
            },
            style:
                TextStyle(fontSize: 20, color: Color.fromARGB(255, 43, 36, 36)),
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              hintText: convertedDateTime,
              labelText: text,
              labelStyle:
                  TextStyle(fontSize: 20, color: Colors.blueAccent[400]),
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
            onChanged: (text) {
              arr2[count] = '$text';
            },
            style:
                TextStyle(fontSize: 20, color: Color.fromARGB(255, 43, 36, 36)),
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: text,
              labelStyle:
                  TextStyle(fontSize: 20, color: Colors.blueAccent[400]),
            ),
          ),
        );
      }
    } else if (edit == 1) //update case
    {
      if (length < 60 && type == 0 && count != 29) {
        return Container(
          margin: EdgeInsets.all(10),
          child: TextFormField(
            controller: TextEditingController(text: edit_text),
            maxLength: length,
            textAlign: TextAlign.left,
            autocorrect: true,
            keyboardType: TextInputType.number,
            onChanged: (text) {
              arr2_2[count] = '$text';
            },
            style:
                TextStyle(fontSize: 20, color: Color.fromARGB(255, 43, 36, 36)),
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: text,
              labelStyle:
                  TextStyle(fontSize: 20, color: Colors.blueAccent[400]),
            ),
          ),
        );
      } else if (count == 29) //Ημερομηνία
      {
        DateTime now = DateTime.now();

        String convertedDateTime =
            "${now.year.toString()}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}";

        return Container(
          margin: EdgeInsets.all(10),
          child: TextFormField(
            controller: TextEditingController(text: edit_text),
            maxLength: length,
            textAlign: TextAlign.left,
            autocorrect: true,
            keyboardType: TextInputType.number,
            onChanged: (text) {
              arr2_2[count] = '$text';
            },
            style:
                TextStyle(fontSize: 20, color: Color.fromARGB(255, 43, 36, 36)),
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              hintText: convertedDateTime,
              labelText: text,
              labelStyle:
                  TextStyle(fontSize: 20, color: Colors.blueAccent[400]),
            ),
          ),
        );
      } else {
        return Container(
          margin: EdgeInsets.all(10),
          child: TextFormField(
            maxLength: length,
            controller: TextEditingController(text: edit_text),
            minLines: 3,
            keyboardType: TextInputType.text,
            maxLines: null,
            textAlign: TextAlign.left,
            autocorrect: true,
            onChanged: (text) {
              arr2_2[count] = '$text';
            },
            style:
                TextStyle(fontSize: 20, color: Color.fromARGB(255, 43, 36, 36)),
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: text,
              labelStyle:
                  TextStyle(fontSize: 20, color: Colors.blueAccent[400]),
            ),
          ),
        );
      }
    } else {      //skeletos
      if (length < 60 && type == 0) {
        return Container(
          margin: EdgeInsets.all(10),
          child: TextFormField(
            controller: TextEditingController(text: edit_text),
            maxLength: length,
            textAlign: TextAlign.left,
            autocorrect: true,
            keyboardType: TextInputType.number,
            onChanged: (text) {
              arr2_2_2[count] = '$text';
            },
            style:
                TextStyle(fontSize: 20, color: Color.fromARGB(255, 43, 36, 36)),
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: text,
              labelStyle:
                  TextStyle(fontSize: 20, color: Colors.blueAccent[400]),
            ),
          ),
        );
      } else {
        return Container(
          margin: EdgeInsets.all(10),
          child: TextFormField(
            maxLength: length,
            controller: TextEditingController(text: edit_text),
            minLines: 3,
            keyboardType: TextInputType.text,
            maxLines: null,
            textAlign: TextAlign.left,
            autocorrect: true,
            onChanged: (text) {
              arr2_2_2[count] = '$text';
            },
            style:
                TextStyle(fontSize: 20, color: Color.fromARGB(255, 43, 36, 36)),
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: text,
              labelStyle:
                  TextStyle(fontSize: 20, color: Colors.blueAccent[400]),
            ),
          ),
        );
      }
    }
  }
}
