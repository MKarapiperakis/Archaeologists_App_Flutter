// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CheckBox5 extends StatefulWidget {
  const CheckBox5();

  @override
  State<StatefulWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CheckBox5> {
  bool eskafeas = false;
  bool kasmas = false;
  bool skalidi = false;
  bool mystri = false;
  bool odont = false;

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
      Text("Εσκαφέας",
          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 18)),
      Checkbox(
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.resolveWith(getColor),
        value: eskafeas,
        onChanged: (bool? value) {
          setState(() {
            eskafeas = value!;
          });
        },
      ),
      Text(
        "Κασμάς",
        style: TextStyle(
            color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 18),
      ),
      Checkbox(
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.resolveWith(getColor),
        value: kasmas,
        onChanged: (bool? value) {
          setState(() {
            kasmas = value!;
          });
        },
      ),
      Text(
        "Σκαλίδι",
        style: TextStyle(
            color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 18),
      ),
      Checkbox(
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.resolveWith(getColor),
        value: skalidi,
        onChanged: (bool? value) {
          setState(() {
            skalidi = value!;
          });
        },
      ),
      Text(
        "πλινθοπερίκλειστη",
        style: TextStyle(
            color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 18),
      ),
      Checkbox(
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.resolveWith(getColor),
        value: mystri,
        onChanged: (bool? value) {
          setState(() {
            mystri = value!;
          });
        },
      ),
      Text(
        "Οδοντ. εργαλείο",
        style: TextStyle(
            color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 18),
      ),
      Checkbox(
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.resolveWith(getColor),
        value: odont,
        onChanged: (bool? value) {
          setState(() {
            odont = value!;
          });
        },
      ),
    ]);
  }
}
