// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CheckBox2 extends StatefulWidget {
  const CheckBox2();

  @override
  State<StatefulWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CheckBox2> {
  bool staxth = false;
  bool karbouno = false;
  bool lithoi = false;
  bool koniama = false;
  bool keramidia = false;
  bool gyali = false;
  bool metala = false;
  bool skwries = false;
  bool osta = false;
  bool ostrea = false;
  bool alla = false;

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
            Text("Στάχτη",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.w500,fontSize: 18)),
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: staxth,
              onChanged: (bool? value) {
                setState(() {
                  staxth = value!;
                });
              },
            ),
            Text(
              "Κάρβουνο",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500,fontSize: 18),
            ),
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: karbouno,
              onChanged: (bool? value) {
                setState(() {
                  karbouno = value!;
                });
              },
            ),
            Text(
              "Λίθοι",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500,fontSize: 18),
            ),
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: lithoi,
              onChanged: (bool? value) {
                setState(() {
                  lithoi = value!;
                });
              },
            )
          ]),
      Row(
        mainAxisAlignment:
            MainAxisAlignment.center, //Center Row contents horizontally,
        children: [
          Text(
            "Κονίαμα",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500,fontSize: 18),
          ),
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: koniama,
            onChanged: (bool? value) {
              setState(() {
                koniama = value!;
              });
            },
          ),
          Text(
            "Κεραμίδια",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500,fontSize: 18),
          ),
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: keramidia,
            onChanged: (bool? value) {
              setState(() {
                keramidia = value!;
              });
            },
          ),
          Text(
            "Γυαλί",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500,fontSize: 18),
          ),
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: gyali,
            onChanged: (bool? value) {
              setState(() {
                gyali = value!;
              });
            },
          )
        ],
      ),
      Row(
        mainAxisAlignment:
            MainAxisAlignment.center, //Center Row contents horizontally,
        children: [
          Text(
            "Μέταλλα",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500,fontSize: 18),
          ),
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: metala,
            onChanged: (bool? value) {
              setState(() {
                metala = value!;
              });
            },
          ),
          Text(
            "Σκωρίες",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500,fontSize: 18),
          ),
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: skwries,
            onChanged: (bool? value) {
              setState(() {
                skwries = value!;
              });
            },
          ),
          Text(
            "Οστά",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500,fontSize: 18),
          ),
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: osta,
            onChanged: (bool? value) {
              setState(() {
                osta = value!;
              });
            },
          )
        ],
      ),
       Row(
        mainAxisAlignment:
            MainAxisAlignment.center, //Center Row contents horizontally,
        children: [
          Text(
            "Όστρεα",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500,fontSize: 18),
          ),
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: ostrea,
            onChanged: (bool? value) {
              setState(() {
                ostrea = value!;
              });
            },
          ),
          Text(
            "Άλλα",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500,fontSize: 18),
          ),
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: alla,
            onChanged: (bool? value) {
              setState(() {
                alla = value!;
              });
            },
          ),
          
        ],
      )
    ]);
  }
}
