import 'dart:ffi';

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';
import 'main.dart';
import 'SkeletosWidget.dart';

List<List<dynamic>> Skeletosid =
    []; //For the Skeleton to be associated with the ΣΜ
List<String> Skeletosidstr = [];

class FloatButton3 extends StatelessWidget {
  final conn = PostgreSQLConnection(
      'hilon.dit.uop.gr', //host
      5432, //port
      'db3u04', //database name
      username: 'db3u04',
      password: 'FmAF7P2A');

  String SMidstr = "";
  var Skeletosalreadyexists = false;

  FloatButton3(String SMidstr) {
    this.SMidstr = SMidstr;
  }

  List<List<dynamic>> drop = [];
  List<String> str = [];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FloatingActionButton.extended(
          heroTag: "btn9",
      icon: Icon(Icons.save),
      label: Text("Εισαγωγή"),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      onPressed: () async => {
        if (conn.isClosed)
          {
            await conn.open(),
          },

        //print(arr),             //dropdowns

        for (int i = 0; i < arr.length; i++)
          {
            if (arr[i] == '')
              {
                arr[i] = 'Καμία επιλογή',
              }
          },

        //To clear the previous selections
        str.clear(),
        drop.clear(),

        //--------------------------------Σκελετός dropdowns + text--------------------------------//
        drop.add(await conn.query(
            "SELECT id FROM \"Τύπος Ταφής\" WHERE Selections='${arr[14]}';")), //Τύπος Ταφής
        str.add(drop[0].toString().replaceAll("[", "").replaceAll("]", "")),

        drop.add(await conn.query(
            "SELECT id FROM \"Τύπος τάφου\" WHERE Selections='${arr[15]}';")), //Τύπος τάφου
        str.add(drop[1].toString().replaceAll("[", "").replaceAll("]", "")),

        drop.add(await conn.query(
            "SELECT id FROM \"Οστά\" WHERE Selections='${arr[16]}';")), //Οστά
        str.add(drop[2].toString().replaceAll("[", "").replaceAll("]", "")),

        drop.add(await conn.query(
            "SELECT id FROM \"Ταφή\" WHERE Selections='${arr[17]}';")), //Ταφή
        str.add(drop[3].toString().replaceAll("[", "").replaceAll("]", "")),

        //Skeletosid.add( await conn.query("SELECT nextval(pg_get_serial_sequence('Σκελετός', 'id')) AS id") ),

        await conn.query(
            "INSERT INTO Σκελετός (\"Έτος\", \"ΣΜ κοψίματος\", \"Τομέας\", \"Κατασκευή\", \"Ενότητα\", \"Σύνολο\", \"Φάση\", \"Ταυτότητα\", \"Κάτω/πριν από\", \"Πάνω/μετά από\", \"Β\", \"Ν\", \"Α\", \"Δ\", \"Ανωτ. Υ κραν\", \"Κατώτ Υ. κραν.\", \"Μήκος\", \"Πλάτος\", \"Βάθος\", \"Προσανατολισμός\", \"Γενική στάση σώματος\", \"Κεφάλι\", \"Κορμός\", \"Δεξί χέρι\", \"Αριστερό χέρι\", \"Δεξί πόδι\", \"Αριστερό πόδι\", \"Περιγραφή/σχόλια\", \"Υ. σκελετού κατά χώραν\", \"Μήκ. μηριαίου οστού\", \"Συνευρήματα\", \"Ανασκ. τεχνική\", \"Συνθήκες\", \"Τύπος Ταφήςid\", \"Τύπος τάφουid\", \"Οστάid\", \"Ταφήid\") VALUES (NULLIF('${arr2[30]}','')::integer, NULLIF('${arr2[31]}','')::integer, NULLIF('${arr2[32]}','')::integer, '${arr2[33]}', '${arr2[34]}', '${arr2[35]}', '${arr2[36]}', '${arr2[37]}', '${arr2[38]}', '${arr2[39]}', NULLIF('${arr2[40]}','')::integer, NULLIF('${arr2[41]}','')::integer, NULLIF('${arr2[42]}','')::integer, NULLIF('${arr2[43]}','')::integer, NULLIF('${arr2[44]}','')::integer, NULLIF('${arr2[45]}','')::integer, NULLIF('${arr2[46]}','')::real, NULLIF('${arr2[47]}','')::real, NULLIF('${arr2[48]}','')::real, '${arr2[49]}', '${arr2[50]}', '${arr2[51]}', '${arr2[52]}', '${arr2[53]}', '${arr2[54]}', '${arr2[55]}', '${arr2[56]}', '${arr2[57]}', NULLIF('${arr2[58]}','')::integer, NULLIF('${arr2[59]}','')::integer, '${arr2[60]}', '${arr2[61]}', '${arr2[62]}', ${str[0]}, ${str[1]}, ${str[2]}, ${str[3]});"),
        Skeletosid.add(await conn
            .query("SELECT distinct last_value(id) over() from Σκελετός")),
        Skeletosidstr.add(
            Skeletosid.last.toString().replaceAll("[", "").replaceAll("]", "")),
        //print(Skeletosidstr),

        await conn.query(
            "INSERT INTO \"Έχει Σκελετό\" (\"ΣΜid\", \"Σκελετόςid\") VALUES ('${SMidstr}', '${Skeletosidstr.last}')"),

        // if (Skeletosidstr.last != "")
        // {
        //   await conn.query("INSERT INTO \"Έχει Σκελετό\" (\"ΣΜid\", \"Σκελετόςid\") VALUES ('${SMidstr}', '${Skeletosidstr.last}')"),
        // }

          Navigator.of(context).pop(),  //go back
      },
    ));
  }
}
