// ignore_for_file: prefer_initializing_formals, prefer_const_constructors

import 'dart:ffi';
//import 'dart:html';

import 'package:application/SearchWidget.dart';
import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';
import 'main.dart';
import 'SearchWidget.dart';

//import 'CheckBoxWidget.dart';

class FloatButton2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyWidgetState();
}

final conn = PostgreSQLConnection(
    'hilon.dit.uop.gr', //host
    5432, //port
    'db3u04', //database name
    username: 'db3u04',
    password: 'FmAF7P2A');

class _MyWidgetState extends State<FloatButton2> {
  @override
  Widget build(BuildContext context) {
    List<List<dynamic>>? SMList = [];
    List<List<dynamic>>? SMListTemp = [];
    List<List<dynamic>>? SMListTemp2 = [];
    List<List<dynamic>> Tautothta = [];
    List<List<dynamic>>? TautothtaTemp = [];
    List<List<dynamic>> Hmeromhnia = [];
    List<List<dynamic>>? HmeromhniaTemp = [];
    List<List<dynamic>> Syntakths = [];
    List<List<dynamic>>? SyntakthsTemp = [];
    List<List<dynamic>> SMCode = [];
    List<List<dynamic>>? SMCodeTemp = [];
    List<List<dynamic>> drop = [];
    List<String> str = [];
    String query = "Select id FROM ΣΜ where TRUE ";

    return Container(
      child: FloatingActionButton.extended(
        icon: Icon(Icons.search),
        label: Text("Αναζήτηση"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        onPressed: () async => {
          if (conn.isClosed)
            {
              await conn.open(),
            },
          //select query according to the inputs
          for (int i = 0; i < arr.length; i++)
            {
              if (arr[i] == '')
                {
                  arr[i] = 'Καμία επιλογή',
                }
            },
          str.clear(),
          drop.clear(),
          drop.add(await conn.query(
              "SELECT id FROM \"ΤύποςΣΜ\" WHERE Selections='${arr[0]}';")), //ΤύποςΣΜ
          str.add(drop[0].toString().replaceAll("[", "").replaceAll("]", "")),

          drop.add(await conn.query(
              "SELECT id FROM \"Κλίση προς\" WHERE Selections='${arr[1]}';")), //Κλίση προς
          str.add(drop[1].toString().replaceAll("[", "").replaceAll("]", "")),

          drop.add(await conn.query(
              "SELECT id FROM \"Κατηγορία/τύπος\" WHERE Selections='${arr[2]}';")), //Κατηγορία/τύπος
          str.add(drop[2].toString().replaceAll("[", "").replaceAll("]", "")),

          drop.add(await conn.query(
              "SELECT id FROM \"Δομή/Υφή\" WHERE Selections='${arr[3]}';")), //Δομή/Υφή
          str.add(drop[3].toString().replaceAll("[", "").replaceAll("]", "")),

          drop.add(await conn.query(
              "SELECT id FROM \"Δομή/Υφή\" WHERE Selections='${arr[4]}';")), //Χρώμα
          str.add(drop[3].toString().replaceAll("[", "").replaceAll("]", "")),

          drop.add(await conn.query(
              "SELECT id FROM \"Συνδετικό υλικό\" WHERE Selections='${arr[5]}';")), //Συνδετικό υλικό
          str.add(drop[5].toString().replaceAll("[", "").replaceAll("]", "")),

          drop.add(await conn.query(
              "SELECT id FROM \"Επίχρισμα(είδος)\" WHERE Selections='${arr[6]}';")), //Επίχρισμα(είδος)
          str.add(drop[6].toString().replaceAll("[", "").replaceAll("]", "")),

          drop.add(await conn.query(
              "SELECT id FROM \"Επίχρισμα (χρώμα)\" WHERE Selections='${arr[7]}';")), //Επίχρισμα (χρώμα)
          str.add(drop[7].toString().replaceAll("[", "").replaceAll("]", "")),

          drop.add(await conn.query(
              "SELECT id FROM \"Δάπεδο\" WHERE Selections='${arr[8]}';")), //Δάπεδο
          str.add(drop[8].toString().replaceAll("[", "").replaceAll("]", "")),

          drop.add(await conn.query(
              "SELECT id FROM \"Θέση\" WHERE Selections='${arr[9]}';")), //Θ΄έση
          str.add(drop[9].toString().replaceAll("[", "").replaceAll("]", "")),

          drop.add(await conn.query(
              "SELECT id FROM \"Χρονολόγηση απο\" WHERE Selections='${arr[10]}';")), //Χρονολόγηση απο
          str.add(drop[10].toString().replaceAll("[", "").replaceAll("]", "")),

          drop.add(await conn.query(
              "SELECT id FROM \"Χρονολόγηση μέχρι\" WHERE Selections='${arr[11]}';")), //Χρονολόγηση μέχρι
          str.add(drop[11].toString().replaceAll("[", "").replaceAll("]", "")),

          drop.add(await conn.query(
              "SELECT id FROM \"Συνθήκες\" WHERE Selections='${arr[12]}';")), //Συνθήκες
          str.add(drop[12].toString().replaceAll("[", "").replaceAll("]", "")),

          drop.add(await conn.query(
              "SELECT id FROM \"Πιθανότητα επιμίξεων\" WHERE Selections='${arr[13]}';")), //Πιθανότητα επιμίξεων
          str.add(drop[13].toString().replaceAll("[", "").replaceAll("]", "")),

          drop.add(await conn.query(
              "SELECT id FROM \"Επιλογές Λίθου\" WHERE Selections='${arr[18]}';")), //Επιλογές Λίθου
          str.add(drop[14].toString().replaceAll("[", "").replaceAll("]", "")),

          TautothtaTemp.clear(),
          HmeromhniaTemp.clear(),
          SyntakthsTemp.clear(),
          SMListTemp2.clear(),
          SMCodeTemp.clear(),

          query = "Select id FROM ΣΜ where TRUE",

          if (arr2[0].isNotEmpty && !arr2[0].contains(" "))
            query = query + " AND (ΣΜ = NULLIF('${arr2[0]}','')::integer)",
          if (arr2[1].isNotEmpty)
            query = query + " AND Ταυτότητα = '${arr2[1]}'",
          if (arr2[2].isNotEmpty && !arr2[2].contains(" "))
            query = query + " AND (Έτος = NULLIF('${arr2[2]}','')::integer)",
          if (arr2[3].isNotEmpty)
            query = query + " AND \"Ανωτ Υ\" = '${arr2[3]}'",
          if (arr2[4].isNotEmpty)
            query = query + " AND \"Κατωτ Υ\" = '${arr2[4]}'",
          if (arr2[5].isNotEmpty && !arr2[5].contains(" "))
            query = query + " AND (Β = NULLIF('${arr2[5]}','')::integer)",
          if (arr2[6].isNotEmpty && !arr2[6].contains(" "))
            query = query + " AND (Ν = NULLIF('${arr2[6]}','')::integer)",
          if (arr2[7].isNotEmpty && !arr2[7].contains(" "))
            query = query + " AND (Α = NULLIF('${arr2[7]}','')::integer)",
          if (arr2[8].isNotEmpty && !arr2[8].contains(" "))
            query = query + " AND (Δ = NULLIF('${arr2[8]}','')::integer)",
          if (arr2[9].isNotEmpty)
            query = query + " AND \"Αντίστοιχη με\" = '${arr2[9]}'",
          if (arr2[10].isNotEmpty)
            query = query + " AND \"Σύγχρονη με\" = '${arr2[10]}'",
          if (arr2[11].isNotEmpty)
            query = query + " AND \"Κάτω\" = '${arr2[11]}'",
          if (arr2[12].isNotEmpty)
            query = query + " AND \"Πάνω\" = '${arr2[12]}'",
          if (arr2[13].isNotEmpty && !arr2[13].contains(" "))
            query = query + " AND (\"Μήκος\" = NULLIF('${arr2[13]}','')::real)",
          if (arr2[14].isNotEmpty && !arr2[14].contains(" "))
            query =
                query + " AND (\"Πλάτος\" = NULLIF('${arr2[14]}','')::real)",
          if (arr2[15].isNotEmpty && !arr2[15].contains(" "))
            query = query + " AND (\"Ύψος\" = NULLIF('${arr2[15]}','')::real)",
          if (arr2[16].isNotEmpty && !arr2[16].contains(" "))
            query =
                query + " AND (\"Διάμετρ\" = NULLIF('${arr2[16]}','')::real)",
          if (arr2[17].isNotEmpty && !arr2[17].contains(" "))
            query = query + " AND (\"Βάθος\" = NULLIF('${arr2[17]}','')::real)",
          if (arr2[18].isNotEmpty && !arr2[18].contains(" "))
            query = query + " AND (\"Πάχος\" = NULLIF('${arr2[18]}','')::real)",
          if (arr2[19].isNotEmpty)
            query = query + " AND \"Μεγεθος στοιχείων\" = '${arr2[19]}'",
          if (arr2[20].isNotEmpty)
            query = query + " AND \"Αριθμ. σωζ δομών\" = '${arr2[20]}'",
          if (arr2[21].isNotEmpty)
            query = query + " AND \"Πειγραφή/ερμηνεία\" = '${arr2[21]}'",
          if (arr2[22].isNotEmpty)
            query = query + " AND \"Χαρακτ. σε σχ. με ΣΜ\" = '${arr2[22]}'",
          if (arr2[23].isNotEmpty)
            query = query + " AND \"Σχέσεις με ΣΜ\" = '${arr2[23]}'",
          if (arr2[24].isNotEmpty && !arr2[24].contains(" "))
            query = query +
                " AND (\"Κόσκινο Ποσοστό\" = NULLIF('${arr2[24]}','')::integer)",
          if (arr2[25].isNotEmpty && !arr2[25].contains(" "))
            query = query +
                " AND (\"Νεροκόσκινο Ποσοστό\" = NULLIF('${arr2[25]}','')::integer)",
          if (arr2[26].isNotEmpty)
            query = query + " AND \"Ποσότητα κεραμικής\" = '${arr2[26]}'",
          if (arr2[27].isNotEmpty && !arr2[27].contains(" "))
            query = query +
                " AND (\"Ημερολόγιο\" = NULLIF('${arr2[27]}','')::integer)",
          if (arr2[28].isNotEmpty)
            query = query + " AND \"Συντάκτης\" = '${arr2[28]}'",
          if (arr2[63].isNotEmpty)
            query = query + " AND \"Λίθος Κείμενο\" = '${arr2[63]}'",
          if (arr2[64].isNotEmpty)
            query = query + " AND \"Πλίνθος Κείμενο\" = '${arr2[64]}'",
          if (arr2[65].isNotEmpty)
            query = query + " AND \"Κεραμοπλαστικός διάοσμος\" = '${arr2[65]}'",
          if (arr2[66].isNotEmpty)
            query = query + " AND \"spolia\" = '${arr2[66]}'",
          if (arr2[67].isNotEmpty)
            query = query + " AND \"Ξύλο\" = '${arr2[67]}'",

          //dropdown queries
          print(str[0]),
          if(str[0] != "1")
          query = query + " AND ΤύποςΣΜid = ${str[0]}",
          if(str[1] != "1")
          query = query + " AND \"Κλίση προςid\" = ${str[1]}",
          if(str[2] != "1")
          query = query + " AND \"Κατηγορία/τύποςid\" = ${str[2]}",
          if(str[3] != "1")
          query = query + " AND \"Δομή/Υφήid\" = ${str[3]}",
          if(str[4] != "1")
          query = query + " AND \"Χρώμαid\" = ${str[4]}",
          if(str[5] != "1")
          query = query + " AND \"Συνδετικό υλικόid\" = ${str[5]}",
          if(str[6] != "1")
          query = query + " AND \"Επίχρισμα(είδος)id\" = ${str[6]}",
          if(str[7] != "1")
          query = query + " AND \"Επίχρισμα (χρώμα)id\" = ${str[7]}",
          if(str[8] != "1")
          query = query + " AND \"Δάπεδοid\" = ${str[8]}",
          if(str[9] != "1")
          query = query + " AND \"Θέσηid\" = ${str[9]}",
          if(str[10] != "1")
          query = query + " AND \"Χρονολόγηση αποid\" = ${str[10]}",
          if(str[11] != "1")
          query = query + " AND \"Χρονολόγηση μέχριid\" = ${str[11]}",
          if(str[12] != "1")
          query = query + " AND \"Συνθήκεςid\" = ${str[12]}",
          if(str[13] != "1")
          query = query + " AND \"Πιθανότητα επιμίξεωνid\" = ${str[13]}",
          if(str[14] != "1")
          query = query + " AND \"Επιλογές Λίθουid\" = ${str[14]}",
          
          if (arr2[29].isNotEmpty)
            query =
                query + " AND \"Ημερομηνία\" = NULLIF('${arr2[29]}','')::date",

          query = query + ";",

          //print(query),
          // query =
          //     "SELECT id FROM ΣΜ where (ΣΜ is null OR ΣΜ = NULLIF('${arr2[0]}','')::integer) OR Ταυτότητα = '${arr2[1]}'OR ( Έτος is null OR Έτος = NULLIF('${arr2[2]}','')::integer);",

          SMList = await conn.query(
              //"SELECT id FROM ΣΜ where ΣΜ = NULLIF('${arr2[0]}','')::integer OR Ταυτότητα = '${arr2[1]}' OR Έτος = NULLIF('${arr2[2]}','')::integer  OR \"Ανωτ Υ\" = '${arr2[3]}'OR \"Κατωτ Υ\" = '${arr2[4]}'  OR Β = NULLIF('${arr2[5]}','')::integer OR Ν = NULLIF('${arr2[6]}','')::integer OR Α = NULLIF('${arr2[7]}','')::integer OR Δ = NULLIF('${arr2[8]}','')::integer OR \"Αντίστοιχη με\" = '${arr2[9]}' OR \"Σύγχρονη με\" = '${arr2[10]}' OR \"Κάτω\" = '${arr2[11]}' OR \"Πάνω\" = '${arr2[12]}' OR \"Μήκος\" = NULLIF('${arr2[13]}','')::integer OR \"Πλάτος\" = NULLIF('${arr2[14]}','')::integer OR \"Ύψος\" = NULLIF('${arr2[15]}','')::integer OR \"Διάμετρ\" = NULLIF('${arr2[16]}','')::integer OR \"Βάθος\" = NULLIF('${arr2[17]}','')::integer OR \"Πάχος\" = NULLIF('${arr2[18]}','')::integer OR \"Μεγεθος στοιχείων\" = '${arr2[19]}' OR \"Αριθμ. σωζ δομών\" = '${arr2[20]}' OR \"Πειγραφή/ερμηνεία\" = '${arr2[21]}' OR \"Χαρακτ. σε σχ. με ΣΜ\" = '${arr2[22]}' OR \"Σχέσεις με ΣΜ\" = '${arr2[23]}'OR \"Κόσκινο Ποσοστό\" = NULLIF('${arr2[24]}','')::integer OR \"Νεροκόσκινο Ποσοστό\" = NULLIF('${arr2[25]}','')::integer OR \"Ποσότητα κεραμικής\" = '${arr2[26]}' OR \"Ημερολόγιο\" = NULLIF('${arr2[27]}','')::integer OR \"Συντάκτης\" = '${arr2[28]}' OR \"Λίθος Κείμενο\" = '${arr2[63]}' OR \"Πλίνθος Κείμενο\" = '${arr2[64]}' OR \"Κεραμοπλαστικός διάοσμος\" = '${arr2[65]}' OR \"spolia\" = '${arr2[66]}' OR \"Ξύλο\" = '${arr2[67]}'  OR \"ΤύποςΣΜid\" =  NULLIF('${str[0]}','')::integer OR \"Κλίση προςid\" =  NULLIF('${str[1]}','')::integer OR \"Κατηγορία/τύποςid\" =  NULLIF('${str[2]}','')::integer OR \"Δομή/Υφήid\" =  NULLIF('${str[3]}','')::integer OR \"Χρώμαid\" =  NULLIF('${str[4]}','')::integer OR \"Συνδετικό υλικόid\" =  NULLIF('${str[5]}','')::integer OR \"Επίχρισμα(είδος)id\" =  NULLIF('${str[6]}','')::integer OR \"Επίχρισμα (χρώμα)id\" =  NULLIF('${str[7]}','')::integer OR \"Δάπεδοid\" =  NULLIF('${str[8]}','')::integer OR \"Θέσηid\" =  NULLIF('${str[9]}','')::integer OR \"Χρονολόγηση αποid\" = NULLIF('${str[10]}','')::integer OR \"Χρονολόγηση μέχριid\" =  NULLIF('${str[11]}','')::integer OR \"Συνθήκεςid\" =  NULLIF('${str[12]}','')::integer OR \"Πιθανότητα επιμίξεωνid\" =  NULLIF('${str[13]}','')::integer OR \"Επιλογές Λίθουid\" =  NULLIF('${str[14]}','')::integer  ;"), //OR \"Κόσκινο\" = '${CheckBox6Value[0]}' OR \"Νεροκόσκινο\" = '${CheckBox6Value[1]}' OR \"Ημερομηνία\" = NULLIF('${arr2[29]}','')::date) ;"),
              //  "SELECT id FROM ΣΜ where (ΣΜ is null OR ΣΜ = NULLIF('${arr2[0]}','')::integer)OR Ταυτότητα = '${arr2[1]}'OR ( Έτος is null OR Έτος = NULLIF('${arr2[2]}','')::integer) OR \"Ανωτ Υ\" = '${arr2[3]}'OR \"Κατωτ Υ\" = '${arr2[4]}'OR ( Β is null OR Β = NULLIF('${arr2[5]}','')::integer)OR ( Ν is null OR Ν = NULLIF('${arr2[6]}','')::integer)OR ( Α is null OR Α = NULLIF('${arr2[7]}','')::integer)OR ( Δ is null OR Δ = NULLIF('${arr2[8]}','')::integer)OR \"Αντίστοιχη με\" = '${arr2[9]}'OR \"Σύγχρονη με\" = '${arr2[10]}'OR \"Κάτω\" = '${arr2[11]}'OR \"Πάνω\" = '${arr2[12]}'OR ( \"Μήκος\" is null OR \"Μήκος\" = NULLIF('${arr2[13]}','')::real) OR ( \"Πλάτος\" is null OR \"Πλάτος\" = NULLIF('${arr2[14]}','')::real)OR ( \"Ύψος\" is null OR \"Ύψος\" = NULLIF('${arr2[15]}','')::real) OR ( \"Διάμετρ\" is null OR \"Διάμετρ\" = NULLIF('${arr2[16]}','')::real) OR ( \"Βάθος\" is null OR \"Βάθος\" = NULLIF('${arr2[17]}','')::real)OR ( \"Πάχος\" is null OR \"Πάχος\" = NULLIF('${arr2[18]}','')::real)OR \"Μεγεθος στοιχείων\" = '${arr2[19]}'OR \"Αριθμ. σωζ δομών\" = '${arr2[20]}'OR \"Πειγραφή/ερμηνεία\" = '${arr2[21]}'OR \"Χαρακτ. σε σχ. με ΣΜ\" = '${arr2[22]}'OR \"Σχέσεις με ΣΜ\" = '${arr2[23]}'OR ( \"Κόσκινο Ποσοστό\" is null OR \"Κόσκινο Ποσοστό\" = NULLIF('${arr2[24]}','')::integer)OR ( \"Νεροκόσκινο Ποσοστό\" is null OR \"Νεροκόσκινο Ποσοστό\" = NULLIF('${arr2[25]}','')::integer)OR \"Ποσότητα κεραμικής\" = '${arr2[26]}'OR ( \"Ημερολόγιο\" is null OR \"Ημερολόγιο\" = NULLIF('${arr2[27]}','')::integer)OR \"Συντάκτης\" = '${arr2[28]}'OR \"Λίθος Κείμενο\" = '${arr2[63]}'OR  \"Πλίνθος Κείμενο\" = '${arr2[64]}'OR \"Κεραμοπλαστικός διάοσμος\" = '${arr2[65]}'OR  \"spolia\" = '${arr2[66]}'OR \"Ξύλο\" = '${arr2[67]}'OR ΤύποςΣΜid = ${str[0]}OR \"Κλίση προςid\" = ${str[1]}OR \"Κατηγορία/τύποςid\" = ${str[2]}OR \"Δομή/Υφήid\"= ${str[3]}OR \"Χρώμαid\" = ${str[4]}OR \"Συνδετικό υλικόid\" = ${str[5]}OR \"Επίχρισμα(είδος)id\"= ${str[6]}OR \"Επίχρισμα (χρώμα)id\" = ${str[7]}OR \"Δάπεδοid\" = ${str[8]}OR \"Θέσηid\" = ${str[9]}OR \"Χρονολόγηση αποid\"= ${str[10]}OR \"Χρονολόγηση μέχριid\" = ${str[11]}OR \"Συνθήκεςid\" = ${str[12]}OR \"Πιθανότητα επιμίξεωνid\" = ${str[13]}OR \"Επιλογές Λίθουid\"= ${str[14]}OR ( \"Ημερομηνία\" is null OR \"Ημερομηνία\" = NULLIF('${arr2[29]}','')::date)  ;"),
              query),
          SMListTemp = SMList,

          for (int i = 0; i < SMListTemp!.length; i++)
            {
              id = int.parse(SMListTemp![i]
                  .toString()
                  .replaceAll("[", "")
                  .replaceAll("]", "")),
              Tautothta = (await conn
                  .query("SELECT Ταυτότητα FROM ΣΜ where id = $id ;")),
              TautothtaTemp.add(Tautothta),
              Hmeromhnia = (await conn
                  .query("SELECT Ημερομηνία FROM ΣΜ where id = $id ;")),
              HmeromhniaTemp.add(Hmeromhnia),
              Syntakths = (await conn
                  .query("SELECT Συντάκτης FROM ΣΜ where id = $id ;")),
              SyntakthsTemp.add(Syntakths),
              SMCode = (await conn.query("SELECT ΣΜ FROM ΣΜ where id = $id ;")),
              SMCodeTemp.add(SMCode),
              SMListTemp2.add(SMListTemp![i]),
            },
          // print(TautothtaTemp),
          // print(SMListTemp2),
          // print(HmeromhniaTemp),
          // print(SMCodeTemp),
          showDialog(
            context: context,
            barrierDismissible: false, // user must tap button!
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: Colors.greenAccent[400],
                title: const Text(
                  'Είστε σίγουροι για την αναζήτηση σας;',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w400),
                ),
                content: SingleChildScrollView(),
                actions: <Widget>[
                  TextButton(
                    child: const Text(
                      'Όχι',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () async {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: const Text('Ναι',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Search(SMListTemp, SMCodeTemp,
                                TautothtaTemp, HmeromhniaTemp, SyntakthsTemp)),
                      );
                    },
                  )
                ],
              );
            },
          )
        },
      ),
    );
  }
}
