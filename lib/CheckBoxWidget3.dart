// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CheckBox3 extends StatefulWidget {
  const CheckBox3();

  @override
  State<StatefulWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CheckBox3> {
  bool isodomh = false;
  bool pseudoisodomh = false;
  bool argolith = false;
  bool plinth = false;
  bool plinth2 = false;
  bool systhma = false;
  bool meikth = false;
  bool kuklwpeia = false;

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
      Column(
          mainAxisAlignment:
              MainAxisAlignment.center, //Center Row contents horizontally,
          children: [
            Text("Ισόδομη",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 18)),
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: isodomh,
              onChanged: (bool? value) {
                setState(() {
                  isodomh = value!;
                });
              },
            ),
            Text(
              "ψευδοϊσόδομη",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: pseudoisodomh,
              onChanged: (bool? value) {
                setState(() {
                  pseudoisodomh = value!;
                });
              },
            )
          ]),
      Column(
          mainAxisAlignment:
              MainAxisAlignment.center, //Center Row contents horizontally,
          children: [
            Text(
              "αργολιθοδομή",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: argolith,
              onChanged: (bool? value) {
                setState(() {
                  argolith = value!;
                });
              },
            ),
            Text(
              "πλινθοπερίκλειστη",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: plinth,
              onChanged: (bool? value) {
                setState(() {
                  plinth = value!;
                });
              },
            ),
          ]),
      Column(
        mainAxisAlignment:
            MainAxisAlignment.center, //Center Row contents horizontally,
        children: [
          Text(
            "πλινθοδομή",
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 18),
          ),
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: plinth2,
            onChanged: (bool? value) {
              setState(() {
                plinth2 = value!;
              });
            },
          ),
          Text(
            "μεικτή",
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 18),
          ),
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: meikth,
            onChanged: (bool? value) {
              setState(() {
                meikth = value!;
              });
            },
          ),
          Text(
            "κυκλώπεια",
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 18),
          ),
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: kuklwpeia,
            onChanged: (bool? value) {
              setState(() {
                kuklwpeia = value!;
              });
            },
          ),
        ],
      ),
      Column(
          mainAxisAlignment:
              MainAxisAlignment.center, //Center Row contents horizontally,
          children: [
            Text(
              "σύστημα κρυμμένης πλίνθου",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: systhma,
              onChanged: (bool? value) {
                setState(() {
                  systhma = value!;
                });
              },
            )
          ])
    ]);
  }
}
