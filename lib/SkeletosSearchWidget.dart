// ignore_for_file: prefer_const_constructors, no_logic_in_create_state

import 'package:application/SearchWidget.dart';
import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';
import 'main.dart';
import 'EditSkeletosWidget.dart';

List<List<dynamic>>? SMKopsimatosID;
List<List<dynamic>>? EnothtaID;
List<List<dynamic>>? SyntakthsID;
List<List<dynamic>>? TautothtaID;
List<List<dynamic>>? sSkeletos;

var SkeletosdropdownArr = ['', '', '', ''];

var arr2_2_2 = [
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
  '',
  ''
];

final conn = PostgreSQLConnection(
    'hilon.dit.uop.gr', //host
    5432, //port
    'db3u04', //database name
    username: 'db3u04',
    password: 'FmAF7P2A');

class Item2 {
  final String header2;
  final String body1;
  final String body2;
  final String body3;
  final String body4;

  Item2({
    required this.header2,
    required this.body1,
    required this.body2,
    required this.body3,
    required this.body4,
  });
}

class SkeletosSearch extends StatelessWidget {
  SkeletosSearch(SMKopsimatosIDtemp, SkeletosIDtemp, Enothtatemp, Syntakthstemp,
      Tautothtatemp) {
    SMKopsimatosID = SMKopsimatosIDtemp;
    EnothtaID = Enothtatemp;
    sSkeletos = SkeletosIDtemp;
    SyntakthsID = Syntakthstemp;
    TautothtaID = Tautothtatemp;
    database2();
  }

  void database2() {
    for (int i = 0; i < sSkeletos!.length; i++) {
      ids2.add(
        Item2(
            header2: sSkeletos!
                .elementAt(i)
                .toString()
                .replaceAll("[", "")
                .replaceAll("]", ""),
            body1:
                "Ενότητα: ${EnothtaID![i].toString().replaceAll("[", "").replaceAll("]", "").replaceAll("null", "Χωρίς τιμή")} ",
            body2:
                "Περιγραφή: ${SyntakthsID![i].toString().replaceAll("[", "").replaceAll("]", "").replaceAll("null", "Χωρίς τιμή")} ",
            body3:
                "Ταυτότητα: ${TautothtaID![i].toString().replaceAll("[", "").replaceAll("]", "").replaceAll("null", "Χωρίς τιμή")} ",
            body4:
                "ΣΜ Κοψίματος: ${SMKopsimatosID![i].toString().replaceAll("[", "").replaceAll("]", "").replaceAll("null", "Χωρίς τιμή")} "),
      );
    }
  }

  List<Item2> ids2 = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Σκελετοί'),
        backgroundColor: Colors.greenAccent[400],
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          ExpansionPanelList.radio(
            children: ids2
                .map((item2) => ExpansionPanelRadio(
                    backgroundColor: Colors.red[50],
                    canTapOnHeader: true,
                    value: item2.header2,
                    headerBuilder: (context, isExpanded) => ListTile(
                          title: Text(
                            item2.header2,
                            style: TextStyle(
                              fontSize: 0,
                              color: Colors.blueAccent[400],
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                    body: Column(children: [
                      ListTile(
                          title: Text(
                        item2.body1,
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      )),
                      ListTile(
                          title: Text(
                        item2.body2,
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      )),
                      ListTile(
                          title: Text(
                        item2.body3,
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      )),
                      ListTile(
                          title: Text(
                        item2.body4,
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      )),
                      FloatingActionButton.extended(
                        heroTag: null,
                        onPressed: () async {
                          if (conn.isClosed) {
                            await conn.open();
                          }
                          arr2_2_2[0] = (await conn.query(
                                  "Select Έτος from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[1] = (await conn.query(
                                  "Select \"ΣΜ κοψίματος\" from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[2] = (await conn.query(
                                  "Select Τομέας from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[3] = (await conn.query(
                                  "Select Κατασκευή from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[4] = (await conn.query(
                                  "Select Ενότητα from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[5] = (await conn.query(
                                  "Select Σύνολο from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[6] = (await conn.query(
                                  "Select Φάση from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[7] = (await conn.query(
                                  "Select Ταυτότητα from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[8] = (await conn.query(
                                  "Select \"Κάτω/πριν από\" from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[9] = (await conn.query(
                                  "Select \"Πάνω/μετά από\" from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[10] = (await conn.query(
                                  "Select Β from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[11] = (await conn.query(
                                  "Select Ν from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[12] = (await conn.query(
                                  "Select Α from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[13] = (await conn.query(
                                  "Select Δ from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[14] = (await conn.query(
                                  "Select \"Ανωτ. Υ κραν\" from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[15] = (await conn.query(
                                  "Select \"Κατώτ Υ. κραν.\" from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[16] = (await conn.query(
                                  "Select Μήκος from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[17] = (await conn.query(
                                  "Select Πλάτος from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[18] = (await conn.query(
                                  "Select Βάθος from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[19] = (await conn.query(
                                  "Select Προσανατολισμός from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[20] = (await conn.query(
                                  "Select \"Γενική στάση σώματος\" from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[21] = (await conn.query(
                                  "Select Κεφάλι from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[22] = (await conn.query(
                                  "Select Κορμός from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[23] = (await conn.query(
                                  "Select \"Δεξί χέρι\" from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[24] = (await conn.query(
                                  "Select \"Αριστερό χέρι\" from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[25] = (await conn.query(
                                  "Select \"Δεξί πόδι\" from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[26] = (await conn.query(
                                  "Select \"Αριστερό πόδι\" from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[27] = (await conn.query(
                                  "Select \"Περιγραφή/σχόλια\" from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[28] = (await conn.query(
                                  "Select \"Υ. σκελετού κατά χώραν\" from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[29] = (await conn.query(
                                  "Select \"Μήκ. μηριαίου οστού\" from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[30] = (await conn.query(
                                  "Select \"Συνευρήματα\" from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[31] = (await conn.query(
                                  "Select \"Ανασκ. τεχνική\" from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2_2[32] = (await conn.query(
                                  "Select \"Συνθήκες\" from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");

                          SkeletosdropdownArr[0] = (await conn.query(
                                  "Select \"Τύπος Ταφήςid\" from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          SkeletosdropdownArr[1] = (await conn.query(
                                  "Select \"Τύπος τάφουid\" from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          SkeletosdropdownArr[2] = (await conn.query(
                                  "Select \"Οστάid\" from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          SkeletosdropdownArr[3] = (await conn.query(
                                  "Select \"Ταφήid\" from Σκελετός where id = ${item2.header2};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      EditSkeletos(item2.header2)));
                        },
                        icon: Icon(Icons.edit),
                        label: Text("Επεξεργασία"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15), // <-- Radius
                        ),
                        backgroundColor: Colors.green[500],
                        foregroundColor: Colors.white,
                      ),
                      Container(
                        child: FloatingActionButton.extended(
                          heroTag: "btn4",
                          onPressed: () async {
                            showDialog(
                              context: context,
                              barrierDismissible:
                                  false, // user must tap button!
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  backgroundColor:
                                      Color.fromARGB(255, 235, 91, 81),
                                  title: const Text(
                                    'Επιθυμείτε να διαγράψετε αυτό το Σκελετό;',
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
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      onPressed: () async {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    TextButton(
                                      child: const Text('Ναι',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20)),
                                      onPressed: () async {
                                        var id = int.parse(item2.header2);

                                        if (conn.isClosed) {
                                          await conn.open();
                                        }

                                        await conn.query(
                                            "DELETE FROM \"Έχει Σκελετό\" WHERE Σκελετόςid=$id"); //deleting the relations ΣΜ-Σκελετοί

                                        await conn.query(
                                            "DELETE FROM Σκελετός WHERE id=$id"); //deleting the ΣΜ's Σκελετοί

                                     
                                        Navigator.of(context)
                                            .pop(); //go back to ΣΜ Search
                                        Navigator.of(context)
                                            .pop(); //close the dialog window
                                      },
                                    )
                                  ],
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.delete),
                          label: Text("Διαγραφή"),
                          backgroundColor: Color.fromARGB(255, 243, 70, 58),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(15), // <-- Radius
                          ),
                        ),
                        padding: EdgeInsets.all(5),
                      ),
                    ])))
                .toList(),
          ),
        ]),
      ),
    );
  }
}
