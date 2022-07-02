// ignore_for_file: prefer_const_constructors, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';
import 'FloatingActionButton5Widget.dart';
import 'main.dart';

String dropdownvalue = '';
bool dropdownflag = false;


var items = [
  '',
];

class DropDown27 extends StatefulWidget {
  DropDown27(first) {
    uarr[7] = first;
  }
  @override
  State<StatefulWidget> createState() {
    if (dropdownflag == false) {
      for (int i = 0; i < Coating_color!.length; i++) {
        String value = Coating_color![i].toString();
        items.add(
          value.replaceAll('[', '').replaceAll(']', '').replaceAll('  ', ''),
        );
      }
      dropdownflag = true;
    }
    return DropDownState();
  }
}

class DropDownState extends State<DropDown27> {
  bool _canShowButton = true;
  void hideWidget() {
    setState(() {
      _canShowButton = !_canShowButton;
    });
  }

  final conn = PostgreSQLConnection(
      'hilon.dit.uop.gr', //host
      5432, //port
      'db3u04', //database name
      username: 'db3u04',
      password: 'FmAF7P2A');

  String insert = "";

  bool flag = false;
  bool option = false;
  var _value;

  DropDownState();

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
      Container(
          //container xrhsimo widget
          width: double.infinity, //center
          padding: EdgeInsets.all(10),
          child: Text(
            "Χρώμα",
            style: TextStyle(
                fontSize: 20,
                color: Colors.greenAccent[700],
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          )),
        Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.greenAccent[400]),
            child: DropdownButton(
              dropdownColor: Colors.greenAccent[400],
              alignment: Alignment.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              value: dropdownvalue,
              items: items.map((String items) {
                return DropdownMenuItem(value: items, child: Text(items));
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                  uarr[7] = dropdownvalue;
                });
              },
              iconSize: 27,
              iconEnabledColor: Colors.white,
              icon: Icon(Icons.arrow_drop_down_circle),
              borderRadius: BorderRadius.circular(30.0),
            )),
      SizedBox(
        width: 15.0,
      ),
      /*Row(children: [
        Padding(padding: EdgeInsets.all(5)),
        !_canShowButton
            ? const SizedBox.shrink()
            : FloatingActionButton.extended(
                icon: Icon(Icons.add),
                label: Text("Άλλο"),
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                onPressed: () async => {
                      showDialog(
                        context: context,
                        barrierDismissible: false, // user must tap button!
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title:
                                const Text('Προσθήκη νέου χρώματος'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  TextField(
                                      textAlign: TextAlign.left,
                                      autocorrect: true,
                                      keyboardType: TextInputType.text,
                                      onChanged: (text) {
                                        insert = text;
                                      })
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('Ακύρωση'),
                                onPressed: () async {
                                  Navigator.of(context).pop();
                                },
                              ),
                              TextButton(
                                child: const Text('Προσθήκη'),
                                onPressed: () async {
                                  await conn.open();
                                  await conn.query(
                                      "INSERT INTO \"Επίχρισμα (χρώμα)\" (selections) VALUES ('${insert}');");

                                  items = [
                                    '',
                                  ];

                                  Synthetic = await conn.query(
                                      "SELECT selections FROM \"Επίχρισμα (χρώμα)\"");

                                  for (int i = 0; i < Synthetic!.length; i++) {
                                    String value = Synthetic![i].toString();
                                    items.add(
                                      value
                                          .replaceAll('[', '')
                                          .replaceAll(']', '')
                                          .replaceAll('  ', ''),
                                    );
                                  }
                                  flag = true;
                                  hideWidget();
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          );
                        },
                      )
                    })
      ]),*/
    ]);
  }
}
