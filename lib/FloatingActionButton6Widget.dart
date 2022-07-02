import 'dart:ffi';

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';
import 'SkeletosSearchWidget.dart';
import 'main.dart';
import 'EditSkeletosWidget.dart';

String Skeletosidstr = "";

var uarr2 = [
  '',
  '',
  '',
  ''
];

class FloatButton6 extends StatelessWidget {
  final conn = PostgreSQLConnection(
      'hilon.dit.uop.gr', //host
      5432, //port
      'db3u04', //database name
      username: 'db3u04',
      password: 'FmAF7P2A');

  FloatButton6(String Skeletosid) {
    Skeletosidstr = Skeletosid;
  }

  List<List<dynamic>> drop = [];
  List<String> str = [];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FloatingActionButton.extended(
      icon: Icon(Icons.refresh),
      label: Text("Ενημέρωση"),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      onPressed: () async => {
        if (conn.isClosed)
          {
            await conn.open(),
          },

        for (int i = 0; i < arr.length; i++)
          {
            if (arr[i] == '')
              {
                arr[i] = 'Καμία επιλογή',
              }
          },
         for (int i = 0; i < uarr2.length; i++)
          {
            if (uarr2[i] == '')
              {
                uarr2[i] = 'Καμία επιλογή',
              }
          },

        //To clear the previous selections
        str.clear(),
        drop.clear(),

        //--------------------------------Σκελετός dropdowns + text--------------------------------//
        drop.add(await conn.query(
            "SELECT id FROM \"Τύπος Ταφής\" WHERE Selections='${uarr2[0]}';")), //Τύπος Ταφής
        str.add(drop[0].toString().replaceAll("[", "").replaceAll("]", "")),

        drop.add(await conn.query(
            "SELECT id FROM \"Τύπος τάφου\" WHERE Selections='${uarr2[1]}';")), //Τύπος τάφου
        str.add(drop[1].toString().replaceAll("[", "").replaceAll("]", "")),

        drop.add(await conn.query(
            "SELECT id FROM \"Οστά\" WHERE Selections='${uarr2[2]}';")), //Οστά
        str.add(drop[2].toString().replaceAll("[", "").replaceAll("]", "")),

        drop.add(await conn.query(
             "SELECT id FROM \"Ταφή\" WHERE Selections='${uarr2[3]}';")), //Ταφή
        str.add(drop[3].toString().replaceAll("[", "").replaceAll("]", "")),


        await conn.query(
            "UPDATE Σκελετός SET \"Έτος\"=NULLIF('${arr2_2_2[0]}','')::integer, \"ΣΜ κοψίματος\"=NULLIF('${arr2_2_2[1]}','')::integer, \"Τομέας\"=NULLIF('${arr2_2_2[2]}','')::integer, \"Κατασκευή\"='${arr2_2_2[3]}', \"Ενότητα\"='${arr2_2_2[4]}', \"Σύνολο\"='${arr2_2_2[5]}', \"Φάση\"='${arr2_2_2[6]}', \"Ταυτότητα\"='${arr2_2_2[7]}', \"Κάτω/πριν από\"='${arr2_2_2[8]}', \"Πάνω/μετά από\"='${arr2_2_2[9]}', \"Β\"=NULLIF('${arr2_2_2[10]}','')::integer, \"Ν\"=NULLIF('${arr2_2_2[11]}','')::integer, \"Α\"=NULLIF('${arr2_2_2[12]}','')::integer, \"Δ\"=NULLIF('${arr2_2_2[13]}','')::integer, \"Ανωτ. Υ κραν\"=NULLIF('${arr2_2_2[14]}','')::integer, \"Κατώτ Υ. κραν.\"=NULLIF('${arr2_2_2[15]}','')::integer, \"Μήκος\"=NULLIF('${arr2_2_2[16]}','')::real, \"Πλάτος\"=NULLIF('${arr2_2_2[17]}','')::real, \"Βάθος\"=NULLIF('${arr2_2_2[18]}','')::real, \"Προσανατολισμός\"='${arr2_2_2[19]}', \"Γενική στάση σώματος\"='${arr2_2_2[20]}', \"Κεφάλι\"='${arr2_2_2[21]}', \"Κορμός\"='${arr2_2_2[22]}', \"Δεξί χέρι\"='${arr2_2_2[23]}', \"Αριστερό χέρι\"='${arr2_2_2[24]}', \"Δεξί πόδι\"='${arr2_2_2[25]}', \"Αριστερό πόδι\"='${arr2_2_2[26]}', \"Περιγραφή/σχόλια\"='${arr2_2_2[27]}', \"Υ. σκελετού κατά χώραν\"=NULLIF('${arr2_2_2[28]}','')::integer, \"Μήκ. μηριαίου οστού\"=NULLIF('${arr2_2_2[29]}','')::integer, \"Συνευρήματα\"='${arr2_2_2[30]}', \"Ανασκ. τεχνική\"='${arr2_2_2[31]}', \"Συνθήκες\"='${arr2_2_2[32]}', \"Τύπος Ταφήςid\"=${str[0]}, \"Τύπος τάφουid\"=${str[1]}, \"Οστάid\"=${str[2]}, \"Ταφήid\"=${str[3]} WHERE id=$Skeletosidstr"),

        Navigator.of(context).pop(), //go back to Skeletons' list
        Navigator.of(context).pop(), //close the dialog window
        Navigator.of(context).pop(), //go back to SM's list
        Navigator.of(context).pop(), //close the dialog window
      },
    ));
  }
}
