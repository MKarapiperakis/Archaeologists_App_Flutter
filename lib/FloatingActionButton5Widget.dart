import 'dart:ui';
import 'package:application/EditSMWidget.dart';
import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';
import 'SearchWidget.dart';
import 'main.dart';
import 'EditSMWidget.dart';

List<List<dynamic>>? SMList = [];
List<List<dynamic>>? SMListTemp = [];
List<List<dynamic>>? SMListTemp2 = [];
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
String query = "";


var uarr = [
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  ''
];

int id = 0;
class FloatButton5 extends StatefulWidget {

  int idSM = 0;
  
  FloatButton5(int idSM)
  {
    this.idSM = idSM;
   id = idSM;
  }

  @override
  State<StatefulWidget> createState() => _MyWidgetState();
}

final conn = PostgreSQLConnection(
    'hilon.dit.uop.gr', //host
    5432, //port
    'db3u04', //database name
    username: 'db3u04',
    password: 'FmAF7P2A'
);

class _MyWidgetState extends State<FloatButton5> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: FloatingActionButton.extended(
            icon: Icon(Icons.refresh),
            label: Text("Ενημέρωση"),
            backgroundColor: Colors.green[500],
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

                    for (int i = 0; i < uarr.length; i++)
                    {
                      if (uarr[i] == '')
                        {
                          uarr[i] = 'Καμία επιλογή',
                        }
                    },

                  
                  str.clear(),
                  drop.clear(),
                  drop.add(await conn.query(
                      "SELECT id FROM \"ΤύποςΣΜ\" WHERE Selections='${uarr[0]}';")), //ΤύποςΣΜ
                  str.add(drop[0]
                      .toString()
                      .replaceAll("[", "")
                      .replaceAll("]", "")),

                  drop.add(await conn.query(
                      "SELECT id FROM \"Κλίση προς\" WHERE Selections='${uarr[1]}';")), //Κλίση προς
                  str.add(drop[1]
                      .toString()
                      .replaceAll("[", "")
                      .replaceAll("]", "")),

                  drop.add(await conn.query(
                      "SELECT id FROM \"Κατηγορία/τύπος\" WHERE Selections='${uarr[2]}';")), //Κατηγορία/τύπος
                  str.add(drop[2]
                      .toString()
                      .replaceAll("[", "")
                      .replaceAll("]", "")),

                  drop.add(await conn.query(
                      "SELECT id FROM \"Δομή/Υφή\" WHERE Selections='${uarr[3]}';")), //Δομή/Υφή
                  str.add(drop[3]
                      .toString()
                      .replaceAll("[", "")
                      .replaceAll("]", "")),

                  drop.add(await conn.query(
                      "SELECT id FROM \"Δομή/Υφή\" WHERE Selections='${uarr[4]}';")), //Χρώμα
                  str.add(drop[3]
                      .toString()
                      .replaceAll("[", "")
                      .replaceAll("]", "")),

                  drop.add(await conn.query(
                      "SELECT id FROM \"Συνδετικό υλικό\" WHERE Selections='${uarr[5]}';")), //Συνδετικό υλικό
                  str.add(drop[5]
                      .toString()
                      .replaceAll("[", "")
                      .replaceAll("]", "")),

                  drop.add(await conn.query(
                      "SELECT id FROM \"Επίχρισμα(είδος)\" WHERE Selections='${uarr[6]}';")), //Επίχρισμα(είδος)
                  str.add(drop[6]
                      .toString()
                      .replaceAll("[", "")
                      .replaceAll("]", "")),

                  drop.add(await conn.query(
                      "SELECT id FROM \"Επίχρισμα (χρώμα)\" WHERE Selections='${uarr[7]}';")), //Επίχρισμα (χρώμα)
                  str.add(drop[7]
                      .toString()
                      .replaceAll("[", "")
                      .replaceAll("]", "")),

                  drop.add(await conn.query(
                      "SELECT id FROM \"Δάπεδο\" WHERE Selections='${uarr[8]}';")), //Δάπεδο
                  str.add(drop[8]
                      .toString()
                      .replaceAll("[", "")
                      .replaceAll("]", "")),

                  drop.add(await conn.query(
                      "SELECT id FROM \"Θέση\" WHERE Selections='${uarr[9]}';")), //Θ΄έση
                  str.add(drop[9]
                      .toString()
                      .replaceAll("[", "")
                      .replaceAll("]", "")),

                  drop.add(await conn.query(
                      "SELECT id FROM \"Χρονολόγηση απο\" WHERE Selections='${uarr[10]}';")), //Χρονολόγηση απο
                  str.add(drop[10]
                      .toString()
                      .replaceAll("[", "")
                      .replaceAll("]", "")),

                  drop.add(await conn.query(
                      "SELECT id FROM \"Χρονολόγηση μέχρι\" WHERE Selections='${uarr[11]}';")), //Χρονολόγηση μέχρι
                  str.add(drop[11]
                      .toString()
                      .replaceAll("[", "")
                      .replaceAll("]", "")),

                  drop.add(await conn.query(
                      "SELECT id FROM \"Συνθήκες\" WHERE Selections='${uarr[12]}';")), //Συνθήκες
                  str.add(drop[12]
                      .toString()
                      .replaceAll("[", "")
                      .replaceAll("]", "")),

                  drop.add(await conn.query(
                      "SELECT id FROM \"Πιθανότητα επιμίξεων\" WHERE Selections='${uarr[13]}';")), //Πιθανότητα επιμίξεων
                  str.add(drop[13]
                      .toString()
                      .replaceAll("[", "")
                      .replaceAll("]", "")),

                  drop.add(await conn.query(
                      "SELECT id FROM \"Επιλογές Λίθου\" WHERE Selections='${uarr[14]}';")), //Επιλογές Λίθου
                  str.add(drop[14]
                      .toString()
                      .replaceAll("[", "")
                      .replaceAll("]", "")),

                  SMListTemp2?.clear(),
                  //print(idSM),
                  query =
                      "UPDATE ΣΜ SET ΣΜ = NULLIF('${arr2_2[0]}','')::integer, Ταυτότητα = '${arr2_2[1]}', Έτος = NULLIF('${arr2_2[2]}','')::integer, \"Ανωτ Υ\" = '${arr2_2[3]}', \"Κατωτ Υ\" = '${arr2_2[4]}', Β = NULLIF('${arr2_2[5]}','')::integer, Ν = NULLIF('${arr2_2[6]}','')::integer, Α = NULLIF('${arr2_2[7]}','')::integer, Δ = NULLIF('${arr2_2[8]}','')::integer, \"Αντίστοιχη με\" = '${arr2_2[9]}', \"Σύγχρονη με\" = '${arr2_2[10]}', \"Κάτω\" = '${arr2_2[11]}', \"Πάνω\" = '${arr2_2[12]}', \"Μήκος\" = NULLIF('${arr2_2[13]}','')::real, \"Πλάτος\" = NULLIF('${arr2_2[14]}','')::real, \"Ύψος\" = NULLIF('${arr2_2[15]}','')::real, \"Διάμετρ\" = NULLIF('${arr2_2[16]}','')::real, \"Βάθος\" = NULLIF('${arr2_2[17]}','')::real, \"Πάχος\" = NULLIF('${arr2_2[18]}','')::real, \"Μεγεθος στοιχείων\" = '${arr2_2[19]}', \"Αριθμ. σωζ δομών\" = '${arr2_2[20]}', \"Πειγραφή/ερμηνεία\" = '${arr2_2[21]}', \"Χαρακτ. σε σχ. με ΣΜ\" = '${arr2_2[22]}', \"Σχέσεις με ΣΜ\" = '${arr2_2[23]}', \"Κόσκινο Ποσοστό\" = NULLIF('${arr2_2[24]}','')::integer, \"Νεροκόσκινο Ποσοστό\" = NULLIF('${arr2_2[25]}','')::integer, \"Ποσότητα κεραμικής\" = '${arr2_2[26]}', \"Ημερολόγιο\" = NULLIF('${arr2_2[27]}','')::integer, \"Συντάκτης\" = '${arr2_2[28]}', \"Λίθος Κείμενο\" = '${arr2_2[63]}', \"Πλίνθος Κείμενο\" = '${arr2_2[64]}', \"Κεραμοπλαστικός διάοσμος\" = '${arr2_2[65]}', \"spolia\" = '${arr2_2[66]}', \"Ξύλο\" = '${arr2_2[67]}', ΤύποςΣΜid = ${str[0]}, \"Κλίση προςid\" = ${str[1]}, \"Κατηγορία/τύποςid\" = ${str[2]}, \"Δομή/Υφήid\" = ${str[3]}, \"Χρώμαid\" = ${str[4]}, \"Συνδετικό υλικόid\" = ${str[5]}, \"Επίχρισμα(είδος)id\" = ${str[6]}, \"Επίχρισμα (χρώμα)id\" = ${str[7]}, \"Δάπεδοid\" = ${str[8]}, \"Θέσηid\" = ${str[9]}, \"Χρονολόγηση αποid\" = ${str[10]}, \"Χρονολόγηση μέχριid\" = ${str[11]}, \"Συνθήκεςid\" = ${str[12]}, \"Πιθανότητα επιμίξεωνid\" = ${str[13]}, \"Επιλογές Λίθουid\" = ${str[14]},Κόσκινο = ${CheckB6["Κόσκινο"]},Νεροκόσκινο = ${CheckB6["Νεροκόσκινο"]}, \"Ημερομηνία\" = NULLIF('${arr2_2[29]}','')::date WHERE id=$id;",

                  //print(query),

                  await conn.query(query),


            //Έχει Υλικό
            checkstr1.clear(),
            str21.clear(),
            check1.clear(),
            CheckBox1Val.entries.forEach((entry) {
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

            print(id),
            await conn.query("DELETE FROM \"Έχει Υλικό\" WHERE \"ΣΜid\"=$id;"),  //delete previous checkbox values
            for (int i = 0; i < str21.length; i++)
            {
              
              await conn.query("INSERT INTO \"Έχει Υλικό\" (\"ΣΜid\", \"Υλικόid\") VALUES ($id, ${str21[i]});"),  //and insert the new ones
            },
            
            //Έχει Προσμίξεις
            checkstr2.clear(),
            str22.clear(),
            check2.clear(),
            CheckBox2Val.entries.forEach((entry) {
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

            await conn.query("DELETE FROM \"Έχει Προσμίξεις\" WHERE \"ΣΜid\"=$id;"),
            for (int i = 0; i < str22.length; i++)
              {
                await conn.query(
                    "INSERT INTO \"Έχει Προσμίξεις\" (\"ΣΜid\", \"Προσμίξειςid\") VALUES ($id, ${str22[i]});"),
              },

            //Έχει Τοιχοποιία
            checkstr3.clear(),
            str23.clear(),
            check3.clear(),
            CheckBox3Val.entries.forEach((entry) {
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

            await conn.query("DELETE FROM \"Έχει Τοιχοποιία\" WHERE \"ΣΜid\"=$id;"),
            for (int i = 0; i < str23.length; i++)
              {
                await conn.query(
                    "INSERT INTO \"Έχει Τοιχοποιία\" (\"ΣΜid\", \"Τοιχοποιίαid\") VALUES ($id, ${str23[i]});"),
              },

            //Έχει Βάσει
            checkstr4.clear(),
            str24.clear(),
            check4.clear(),
            CheckBox4Val.entries.forEach((entry) {
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

            await conn.query("DELETE FROM \"Έχει Βάσει\" WHERE \"ΣΜid\"=$id;"),
            for (int i = 0; i < str24.length; i++)
              {
                await conn.query(
                    "INSERT INTO \"Έχει Βάσει\" (\"ΣΜid\", \"Βάσειid\") VALUES ($id, ${str24[i]});"),
              },

            //Έχει Ανασκαφ. τεχνική
            checkstr5.clear(),
            str25.clear(),
            check5.clear(),
            CheckBox5Val.entries.forEach((entry) {
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

            await conn.query("DELETE FROM \"Έχει Ανασκαφ. τεχνική\" WHERE \"ΣΜid\"=$id;"),
            for (int i = 0; i < str25.length; i++)
              {
                await conn.query(
                    "INSERT INTO \"Έχει Ανασκαφ. τεχνική\" (\"ΣΜid\", \"Ανασκαφ. τεχνικήid\") VALUES ($id, ${str25[i]});"),
              },
                  Synthetic = await conn.query("SELECT selections FROM \"Συνδετικό υλικό\""),
                  Coating_color = await conn.query("SELECT selections FROM \"Επίχρισμα (χρώμα)\""),

                  Navigator.of(context).pop(), //go back to the search
                  Navigator.of(context).pop(), //close the prompt window
                  Navigator.of(context).pop(),
                  Navigator.of(context).pop()
                }));
  }
}
