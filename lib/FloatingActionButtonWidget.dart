// ignore_for_file: prefer_initializing_formals, prefer_const_constructors

import 'dart:ffi';

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';
import 'main.dart';
import 'SkeletosWidget.dart';
//import 'CheckBoxWidget.dart';

class FloatButton extends StatelessWidget {
  final conn = PostgreSQLConnection(
      'hilon.dit.uop.gr', //host
      5432, //port
      'db3u04', //database name
      username: 'db3u04',
      password: 'FmAF7P2A');

  FloatButton() {}

  List<List<dynamic>> drop = [];
  List<String> str = [];

  List<String> checkstr1 = [];
  List<List<dynamic>> check1 = [];
  List<String> str21 = [];
  List<String> checkstr2 = [];
  List<List<dynamic>> check2 = [];
  List<String> str22 = [];
  List<String> checkstr3 = [];
  List<List<dynamic>> check3 = [];
  List<String> str23 = [];
  List<String> checkstr4 = [];
  List<List<dynamic>> check4 = [];
  List<String> str24 = [];
  List<String> checkstr5 = [];
  List<List<dynamic>> check5 = [];
  List<String> str25 = [];

  List<List<dynamic>> SMid = []; //For the Skeleton to be associated with the ΣΜ
  List<String> SMidstr = []; //To see if the ΣΜ already exists

  var SMalreadyexists = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FloatingActionButton.extended(
           heroTag: "btn5",
      icon: Icon(Icons.save),
      label: Text("Εισαγωγή"),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      onPressed: () async => {
        if (conn.isClosed)
          {
            await conn.open(),
          },

        //dropdowns

        //checking of the ΣΜ field is empty
        if (arr2[0].trim().isEmpty)
          {
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('Κενός κωδικός!'),
                content: const Text(
                    'Παρακαλώ ελέγξτε τον κωδικό ΣΜ που εισάγατε και ξαναδοκιμάστε.'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
          }
        else
          {
            for (int i = 0; i < arr.length; i++)
              {
                if (arr[i] == '')
                  {
                    arr[i] = 'Καμία επιλογή',
                  }
              },

            //Πρέπει να βάλουμε να εμφανίζεται το κε΄ίμενο για το Κόσκινο/Νεροκόσκινο Ποσοστό μόνο όταν επιλέγεται το αντίστοιχο κουτάκι
            //---------------------------ΣΜ dropdowns + text + Κόσκινο/Νεροκόσκινο checkbox-------------------------------------//
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
            str.add(
                drop[10].toString().replaceAll("[", "").replaceAll("]", "")),

            drop.add(await conn.query(
                "SELECT id FROM \"Χρονολόγηση μέχρι\" WHERE Selections='${arr[11]}';")), //Χρονολόγηση μέχρι
            str.add(
                drop[11].toString().replaceAll("[", "").replaceAll("]", "")),

            drop.add(await conn.query(
                "SELECT id FROM \"Συνθήκες\" WHERE Selections='${arr[12]}';")), //Συνθήκες
            str.add(
                drop[12].toString().replaceAll("[", "").replaceAll("]", "")),

            drop.add(await conn.query(
                "SELECT id FROM \"Πιθανότητα επιμίξεων\" WHERE Selections='${arr[13]}';")), //Πιθανότητα επιμίξεων
            str.add(
                drop[13].toString().replaceAll("[", "").replaceAll("]", "")),

            drop.add(await conn.query(
                "SELECT id FROM \"Επιλογές Λίθου\" WHERE Selections='${arr[18]}';")), //Επιλογές Λίθου
            str.add(
                drop[14].toString().replaceAll("[", "").replaceAll("]", "")),

            SMid.clear(),
            SMidstr.clear(),

            SMid.add(await conn.query(
                "SELECT ΣΜ FROM ΣΜ WHERE ΣΜ='${arr2[0]}';")), //finding the ΣΜid

            SMidstr.add(SMid.last
                .toString()
                .replaceAll("[", "")
                .replaceAll("]", "")), //finding the ΣΜid

            for (int i = 0;
                i < radioarr.length;
                i++) //If the radio button is false, empty the context of the textbox below it
              {
                if (radioarr[i] == 2 && i == 0)
                  {
                    arr2[63] = "",
                  }
                else if (radioarr[i] == 2 && i == 1)
                  {
                    arr2[64] = "",
                  }
                else if (radioarr[i] == 2 && i == 2)
                  {
                    arr2[65] = "",
                  }
                else if (radioarr[i] == 2 && i == 3)
                  {
                    arr2[66] = "",
                  }
                else if (radioarr[i] == 2 && i == 4)
                  {
                    arr2[67] = "",
                  }
              },
              if(CheckBox6Value["Κόσκινο"] != true)
                CheckBox6Value["Κόσκινο"] = false,
              if(CheckBox6Value["Νεροκόσκινο"] != true)
                CheckBox6Value["Νεροκόσκινο"] = false,
            
            if (SMidstr.last ==
                "") //Πρεπει να ειναι UNIQUE γιατι μπορει να υπαρχουν και αλλες ΣΜ με τον ιδιο ΣΜ αριθμο αλλα διαφορετικο id...!
              {
                await conn.query(
                    "INSERT INTO ΣΜ (\"ΣΜ\",\"Ταυτότητα\",\"Έτος\",\"Ανωτ Υ\",\"Κατωτ Υ\",\"Β\",\"Ν\",\"Α\",\"Δ\",\"Αντίστοιχη με\",\"Σύγχρονη με\",\"Κάτω\",\"Πάνω\",\"Μήκος\",\"Πλάτος\",\"Ύψος\",\"Διάμετρ\",\"Βάθος\",\"Πάχος\",\"Μεγεθος στοιχείων\",\"Αριθμ. σωζ δομών\",\"Πειγραφή/ερμηνεία\",\"Χαρακτ. σε σχ. με ΣΜ\",\"Σχέσεις με ΣΜ\",\"Κόσκινο Ποσοστό\",\"Νεροκόσκινο Ποσοστό\",\"Ποσότητα κεραμικής\",\"Ημερολόγιο\",\"Συντάκτης\",\"Λίθος Κείμενο\",\"Πλίνθος Κείμενο\",\"Κεραμοπλαστικός διάοσμος\",\"spolia\",\"Ξύλο\", \"ΤύποςΣΜid\", \"Κλίση προςid\", \"Κατηγορία/τύποςid\", \"Δομή/Υφήid\", \"Χρώμαid\", \"Συνδετικό υλικόid\", \"Επίχρισμα(είδος)id\", \"Επίχρισμα (χρώμα)id\", \"Δάπεδοid\", \"Θέσηid\", \"Χρονολόγηση αποid\", \"Χρονολόγηση μέχριid\", \"Συνθήκεςid\", \"Πιθανότητα επιμίξεωνid\", \"Επιλογές Λίθουid\", \"Κόσκινο\", \"Νεροκόσκινο\", \"Ημερομηνία\") VALUES (NULLIF('${arr2[0]}','')::integer,'${arr2[1]}', NULLIF('${arr2[2]}','')::integer, '${arr2[3]}', '${arr2[4]}', NULLIF('${arr2[5]}','')::integer, NULLIF('${arr2[6]}','')::integer, NULLIF('${arr2[7]}','')::integer, NULLIF('${arr2[8]}','')::integer, '${arr2[9]}', '${arr2[10]}', '${arr2[11]}', '${arr2[12]}', NULLIF('${arr2[13]}','')::integer, NULLIF('${arr2[14]}','')::integer, NULLIF('${arr2[15]}','')::integer,NULLIF('${arr2[16]}','')::integer,NULLIF('${arr2[17]}','')::integer,NULLIF('${arr2[18]}','')::integer,'${arr2[19]}','${arr2[20]}','${arr2[21]}','${arr2[22]}','${arr2[23]}',NULLIF('${arr2[24]}','')::integer,NULLIF('${arr2[25]}','')::integer,'${arr2[26]}',NULLIF('${arr2[27]}','')::integer,'${arr2[28]}','${arr2[63]}','${arr2[64]}','${arr2[65]}','${arr2[66]}','${arr2[67]}', ${str[0]}, ${str[1]}, ${str[2]}, ${str[3]}, ${str[4]}, ${str[5]}, ${str[6]}, ${str[7]}, ${str[8]}, ${str[9]}, ${str[10]}, ${str[11]}, ${str[12]}, ${str[13]}, ${str[14]}, ${CheckBox6Value["Κόσκινο"]}, ${CheckBox6Value["Νεροκόσκινο"]}, NULLIF('${arr2[29]}','')::date);"),
                SMalreadyexists = false,
                SMid.add(await conn.query(
                    "SELECT id FROM ΣΜ WHERE ΣΜ='${arr2[0]}';")), //finding the ΣΜid
                SMidstr.add(
                    SMid[1].toString().replaceAll("[", "").replaceAll("]", "")),
              }
            else
              {
                SMalreadyexists = true,
                print("ΣΜ already exists in the database!"),
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Η ΣΜ υπάρχει ήδη!'),
                    content: const Text(
                        'Παρακαλώ ελέγξτε τον κωδικό ΣΜ που εισάγατε και ξαναδοκιμάστε.'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                ),
              },

            if (SMalreadyexists == false)
              {
                //Έχει Υλικό
                checkstr1.clear(),
                str21.clear(),
                check1.clear(),
                CheckBox1Value.entries.forEach((entry) {
                  if (entry.value == true) {
                    checkstr1.add(entry.key);
                  }
                }),

                for (int i = 0; i < checkstr1.length; i++)
                  {
                    check1.add(await conn.query(
                        "SELECT id FROM \"Υλικό\" WHERE Selections='${checkstr1[i]}';")),
                    str21.add(check1[i]
                        .toString()
                        .replaceAll("[", "")
                        .replaceAll("]", "")),
                  },

                for (int i = 0; i < str21.length; i++)
                  {
                    await conn.query(
                        "INSERT INTO \"Έχει Υλικό\" (\"ΣΜid\", \"Υλικόid\") VALUES (${SMidstr[1]}, ${str21[i]});"),
                  },

                //Έχει Προσμίξεις
                checkstr2.clear(),
                str22.clear(),
                check2.clear(),
                CheckBox2Value.entries.forEach((entry) {
                  if (entry.value == true) {
                    checkstr2.add(entry.key);
                  }
                }),

                for (int i = 0; i < checkstr2.length; i++)
                  {
                    check2.add(await conn.query(
                        "SELECT id FROM \"Προσμίξεις\" WHERE Selections='${checkstr2[i]}';")),
                    str22.add(check2[i]
                        .toString()
                        .replaceAll("[", "")
                        .replaceAll("]", "")),
                  },

                for (int i = 0; i < str22.length; i++)
                  {
                    await conn.query(
                        "INSERT INTO \"Έχει Προσμίξεις\" (\"ΣΜid\", \"Προσμίξειςid\") VALUES (${SMidstr[1]}, ${str22[i]});"),
                  },

                //Έχει Τοιχοποιία
                checkstr3.clear(),
                str23.clear(),
                check3.clear(),
                CheckBox3Value.entries.forEach((entry) {
                  if (entry.value == true) {
                    checkstr3.add(entry.key);
                  }
                }),

                for (int i = 0; i < checkstr3.length; i++)
                  {
                    check3.add(await conn.query(
                        "SELECT id FROM \"Τοιχοποιία\" WHERE Selections='${checkstr3[i]}';")),
                    str23.add(check3[i]
                        .toString()
                        .replaceAll("[", "")
                        .replaceAll("]", "")),
                  },

                for (int i = 0; i < str23.length; i++)
                  {
                    await conn.query(
                        "INSERT INTO \"Έχει Τοιχοποιία\" (\"ΣΜid\", \"Τοιχοποιίαid\") VALUES (${SMidstr[1]}, ${str23[i]});"),
                  },

                //Έχει Βάσει
                checkstr4.clear(),
                str24.clear(),
                check4.clear(),
                CheckBox4Value.entries.forEach((entry) {
                  if (entry.value == true) {
                    checkstr4.add(entry.key);
                  }
                }),

                for (int i = 0; i < checkstr4.length; i++)
                  {
                    check4.add(await conn.query(
                        "SELECT id FROM \"Βάσει\" WHERE Selections='${checkstr4[i]}';")),
                    str24.add(check4[i]
                        .toString()
                        .replaceAll("[", "")
                        .replaceAll("]", "")),
                  },

                for (int i = 0; i < str24.length; i++)
                  {
                    await conn.query(
                        "INSERT INTO \"Έχει Βάσει\" (\"ΣΜid\", \"Βάσειid\") VALUES (${SMidstr[1]}, ${str24[i]});"),
                  },

                //Έχει Ανασκαφ. τεχνική
                checkstr5.clear(),
                str25.clear(),
                check5.clear(),
                CheckBox5Value.entries.forEach((entry) {
                  if (entry.value == true) {
                    checkstr5.add(entry.key);
                  }
                }),

                for (int i = 0; i < checkstr5.length; i++)
                  {
                    check5.add(await conn.query(
                        "SELECT id FROM \"Ανασκαφ. τεχνική\" WHERE Selections='${checkstr5[i]}';")),
                    str25.add(check5[i]
                        .toString()
                        .replaceAll("[", "")
                        .replaceAll("]", "")),
                  },

                for (int i = 0; i < str25.length; i++)
                  {
                    await conn.query(
                        "INSERT INTO \"Έχει Ανασκαφ. τεχνική\" (\"ΣΜid\", \"Ανασκαφ. τεχνικήid\") VALUES (${SMidstr[1]}, ${str25[i]});"),
                  },
                //Δεν εχουμε βαλει τα πεδια "Συντάκτης", "Ημερολόγιο" και "Ημερομηνία" καθόλου!
                //await conn.query("INSERT INTO Σκελετός (\"Έτος\", \"ΣΜ κοψίματος\", \"Τομέας\", \"Κατασκευή\", \"Ενότητα\", \"Σύνολο\", \"Φάση\", \"Ταυτότητα\", \"Κάτω/πριν από\", \"Πάνω/μετά από\", \"Β\", \"Ν\", \"Α\", \"Δ\", \"Ανωτ. Υ κραν\", \"Κατώτ Υ. κραν.\", \"Μήκος\", \"Πλάτος\", \"Βάθος\", \"Προσανατολισμός\", \"Γενική στάση σώματος\", \"Κεφάλι\", \"Κορμός\", \"Δεξί χέρι\", \"Αριστερό χέρι\", \"Δεξί πόδι\", \"Αριστερό πόδι\", \"Περιγραφή/σχόλια\", \"Υ. σκελετού κατά χώραν\", \"Μήκ. μηριαίου οστού\", \"Συνευρήματα\", \"Ανασκ. τεχνική\", \"Συνθήκες\", \"Τύπος Ταφήςid\", \"Τύπος τάφουid\", \"Οστάid\", \"Ταφήid\") VALUES (NULLIF('${arr2[29]}','')::integer, NULLIF('${arr2[30]}','')::integer, NULLIF('${arr2[31]}','')::integer, '${arr2[32]}', '${arr2[33]}', '${arr2[34]}', '${arr2[35]}', '${arr2[36]}', '${arr2[37]}', '${arr2[38]}', NULLIF('${arr2[39]}','')::integer, NULLIF('${arr2[40]}','')::integer, NULLIF('${arr2[41]}','')::integer, NULLIF('${arr2[42]}','')::integer, NULLIF('${arr2[43]}','')::integer, NULLIF('${arr2[44]}','')::integer, NULLIF('${arr2[45]}','')::real, NULLIF('${arr2[46]}','')::real, NULLIF('${arr2[47]}','')::real, '${arr2[48]}', '${arr2[49]}', '${arr2[50]}', '${arr2[51]}', '${arr2[52]}', '${arr2[53]}', '${arr2[54]}', '${arr2[55]}', '${arr2[56]}', NULLIF('${arr2[57]}','')::integer, NULLIF('${arr2[58]}','')::integer, '${arr2[59]}', '${arr2[60]}', '${arr2[61]}', ${str[15]}, ${str[16]}, ${str[17]}, ${str[18]});"),
              }
            else
              {
                print("A ΣΜ exists that includes this Σκελετός!"),
              },

            //print(radioarr),        //radio buttons   2 for false, 1 for true, 0 for null

            //-------------------ΣΜ checkboxes - Κόσκινο/Νεροκόσκινο---------------------------------------//
            // print(CheckBox1Value),
            // print(CheckBox2Value),
            // print(CheckBox3Value),
            // print(CheckBox4Value),
            // print(CheckBox5Value),
            // print(CheckBox6Value),
            // print(arr),

            //Έχει Υλικό

            if (SMalreadyexists == false)
              {
                showDialog(
                  context: context,
                  barrierDismissible: false, // user must tap button!
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.greenAccent[400],
                      title: const Text('Προσθήκη νέου Σκελετού;',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.w400)),
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          onPressed: () async {
                            if (SMalreadyexists == false) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Skeletos(SMidstr.last)),
                              );
                            }
                          },
                        )
                      ],
                    );
                  },
                )
              }
          }, //else
      },
    ));
  }
}
