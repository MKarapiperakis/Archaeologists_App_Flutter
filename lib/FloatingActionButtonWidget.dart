// ignore_for_file: prefer_initializing_formals, prefer_const_constructors

import 'package:flutter/material.dart';

class FloatButton extends StatelessWidget {
  FloatButton() {}

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FloatingActionButton.extended(
      icon: Icon(Icons.save),
      label: Text("Save"),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      onPressed: () => {},
    ));
  }
}
