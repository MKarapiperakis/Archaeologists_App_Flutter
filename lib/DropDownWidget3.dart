// ignore_for_file: prefer_const_constructors, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'FloatingActionButton5Widget.dart';
import 'main.dart';

String dropdownvalue = '';
bool dropdownflag = false;

var items = [
  '',
];

class DropDown3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    if (dropdownflag == false) {
      for (int i = 0; i < Category!.length; i++) {
        String value = Category![i].toString();
        items.add(
          value.replaceAll('[', '').replaceAll(']', '').replaceAll('  ', ''),
        );
      }
      dropdownflag = true;
    }
    return DropDownState();
  }
}

class DropDownState extends State<DropDown3> {
  // var items = [
  // '',
  //   'Κατοίκηση',
  //   'Πρόσχωση',
  //   'Επίχωση',
  //   'Καταστροφή',
  //   'Απόρριψη',
  //   'Απόθεση',
  //   'Γέμισμα',
  //   'Δάπεδο',
  //   'Επιφάνεια κυκλ.',
  //   'Στρώμα',
  //   'Τεχνητό στρώμα',
  //   'Εστία',
  //   'Πασαλότρυπα',
  //   'Πηγάδι',
  //   'Όρυγμα/Λάκκος',
  //   'Τάφρος',
  //   'Τάφρος θεμελίωσης',
  //   'Σιρός',
  //   'Αγγείο κατά χώραν',
  //   'Σκελετός',
  //   'Τοίχος',
  //   'Πεσσός',
  //   'Θρανίο',
  //   'Θύρα',
  //   'Κατώφλι',
  //   'Κτιστό δάπεδο',
  //   'Οδόστρωμα',
  //   'Αγωγός',
  //   'Λεκάνη',
  //   'Κλίβανος',
  //   'Τάφος',
  //   'Κονίαμα'
  // ];

  DropDownState();

  @override
  Widget build(BuildContext context) {
    return Container(
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
                arr[2] = dropdownvalue;
            });
          },
          iconSize: 27,
          iconEnabledColor: Colors.white,
          icon: Icon(Icons.arrow_drop_down_circle),
          borderRadius: BorderRadius.circular(30.0),
        ));
  }
}
