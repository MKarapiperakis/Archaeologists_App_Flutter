import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox();

  @override
  State<StatefulWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CheckBox> {
  bool arg = false;
  bool ilys = false;
  bool ammos = false;
  bool xaliki = false;
  bool petroules = false;
  bool lithoi = false;

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
            Text("Άργιλος",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.w500,fontSize: 18)),
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: arg,
              onChanged: (bool? value) {
                setState(() {
                  arg = value!;
                });
              },
            ),
            Text(
              "Ιλύς",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500,fontSize: 18),
            ),
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: ilys,
              onChanged: (bool? value) {
                setState(() {
                  ilys = value!;
                });
              },
            ),
            Text(
              "Άμμος",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500,fontSize: 18),
            ),
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: ammos,
              onChanged: (bool? value) {
                setState(() {
                  ammos = value!;
                });
              },
            )
          ]),
      Row(
        mainAxisAlignment:
            MainAxisAlignment.center, //Center Row contents horizontally,
        children: [
          Text(
            "Χαλίκι",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500,fontSize: 18),
          ),
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: xaliki,
            onChanged: (bool? value) {
              setState(() {
                xaliki = value!;
              });
            },
          ),
          Text(
            "Πετρούλες",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500,fontSize: 18),
          ),
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: petroules,
            onChanged: (bool? value) {
              setState(() {
                petroules = value!;
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
        ],
      )
    ]);
  }
}
