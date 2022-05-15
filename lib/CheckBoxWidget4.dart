// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CheckBox4 extends StatefulWidget {
  const CheckBox4();

  @override
  State<StatefulWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CheckBox4> {
  bool keram = false;
  bool nomism = false;
  bool allo = false;

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
      Row(
          mainAxisAlignment:
              MainAxisAlignment.center, //Center Row contents horizontally,
          children: [
            Text("Κεραμ.",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 18)),
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: keram,
              onChanged: (bool? value) {
                setState(() {
                  keram = value!;
                });
              },
            ),
            Text(
              "Νομισμ.",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: nomism,
              onChanged: (bool? value) {
                setState(() {
                  nomism = value!;
                });
              },
            ),
            Text(
              "Άλλο",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: allo,
              onChanged: (bool? value) {
                setState(() {
                  allo = value!;
                });
              },
            )
          ])
    ]);
  }
}
