// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names

import 'dart:async';
import 'dart:ffi';

import 'package:application/DateSelectionWidget.dart';
import 'package:flutter/material.dart';
import 'TextWidget.dart';
import 'InputTextWidget.dart';
import 'DropDownWidget.dart';
import 'DropDownWidget2.dart';
import 'DropDownWidget3.dart';
import 'CheckBoxWidget.dart';
import 'DropDownWidget4.dart';
import 'DropDownWidget5.dart';
import 'CheckBoxWidget2.dart';
import 'RadioButtonWidget.dart';
import 'RadioButtonWidget2.dart';
import 'DropDownWidget6.dart';
import 'DropDownWidget7.dart';
import 'DropDownWidget8.dart';
import 'RadioButtonWidget3.dart';
import 'RadioButtonWidget4.dart';
import 'RadioButtonWidget5.dart';
import 'CheckBoxWidget3.dart';
import 'DropDownWidget9.dart';
import 'DropDownWidget10.dart';
import 'DropDownWidget11.dart';
import 'DropDownWidget12.dart';
import 'CheckBoxWidget4.dart';
import 'CheckBoxWidget5.dart';
import 'DropDownWidget13.dart';
import 'DropDownWidget14.dart';
import 'CheckBoxWidget6.dart';
import 'DropDownWidget15.dart';
import 'DropDownWidget16.dart';
import 'DropDownWidget17.dart';
import 'DropDownWidget18.dart';
import 'FloatingActionButtonWidget.dart';
import 'dart:io';
import 'dart:convert';
import 'package:postgres/postgres.dart';
import 'CheckBoxWidget6.dart';
import 'FloatingActionButton2Widget.dart';

List<List<dynamic>>? SMType;
List<List<dynamic>>? Direction;
List<List<dynamic>>? Category;
List<List<dynamic>>? Structure;
List<List<dynamic>>? Color1;
List<List<dynamic>>? Synthetic;
List<List<dynamic>>? Coating_material;
List<List<dynamic>>? Coating_color;
List<List<dynamic>>? Floor;
List<List<dynamic>>? Place;
List<List<dynamic>>? Datingfrom;
List<List<dynamic>>? Datingto;
List<List<dynamic>>? Conditions;
List<List<dynamic>>? Mixingpossib;
List<List<dynamic>>? BurialType;
List<List<dynamic>>? TombType;
List<List<dynamic>>? Bones;
List<List<dynamic>>? Burial;
List<List<dynamic>>? Stone;

//-------------------------------- CHECKBOX -------------------------------------------\\
List<List<dynamic>>? material;
List<List<dynamic>>? prosm;
List<List<dynamic>>? toixop;
List<List<dynamic>>? basei;
List<List<dynamic>>? anask;

/*
Timer? timer1;
Timer? timer2;

@override
void initState() {
  initState();
  timer1 = Timer.periodic(Duration(seconds: 10), (Timer t1) async => Synthetic = await conn.query("SELECT selections FROM \"Συνδετικό υλικό\""));
  timer2 = Timer.periodic(Duration(seconds: 10), (Timer t2) async => Coating_color = await conn.query("SELECT selections FROM \"Επίχρισμα (χρώμα)\""));
}

@override
void dispose() {
  timer1?.cancel();
  timer2?.cancel();
  dispose();
}
*/




void main() async {
  final conn = PostgreSQLConnection(
      'hilon.dit.uop.gr', //host
      5432, //port
      'db3u04', //database name
      username: 'db3u04',
      password: 'FmAF7P2A');

  if (conn.isClosed)
  {
    await conn.open();
  };
  print('Connection with the Postgres database was successful!'); //For debugging


  SMType = await conn.query("SELECT selections FROM ΤύποςΣΜ");
  Direction = await conn.query("SELECT selections FROM \"Κλίση προς\"");
  Category = await conn.query("SELECT selections FROM \"Κατηγορία/τύπος\"");
  Structure = await conn.query("SELECT selections FROM \"Δομή/Υφή\"");
  Color1 = await conn.query("SELECT selections FROM Χρώμα");
  Synthetic = await conn.query("SELECT selections FROM \"Συνδετικό υλικό\"");
  Coating_material = await conn.query("SELECT selections FROM \"Επίχρισμα(είδος)\"");
  Coating_color = await conn.query("SELECT selections FROM \"Επίχρισμα (χρώμα)\"");
  Floor = await conn.query("SELECT selections FROM Δάπεδο");
  Place = await conn.query("SELECT selections FROM Θέση");
  Datingfrom = await conn.query("SELECT selections FROM \"Χρονολόγηση απο\"");
  Datingto = await conn.query("SELECT selections FROM \"Χρονολόγηση μέχρι\"");
  Conditions = await conn.query("SELECT selections FROM Συνθήκες");
  Mixingpossib =
      await conn.query("SELECT selections FROM \"Πιθανότητα επιμίξεων\"");
  BurialType = await conn.query("SELECT selections FROM \"Τύπος Ταφής\"");
  TombType = await conn.query("SELECT selections FROM \"Τύπος τάφου\"");
  Bones = await conn.query("SELECT selections FROM Οστά");
  Burial = await conn.query("SELECT selections FROM Ταφή");
  Stone = await conn.query("SELECT selections FROM \"Επιλογές Λίθου\" ");

  //-------------------------------- CHECKBOX -------------------------------------------\\

  material = await conn.query("SELECT selections FROM Υλικό;");
  prosm = await conn.query("SELECT selections FROM Προσμίξεις;");
  toixop = await conn.query("SELECT selections FROM Τοιχοποιία;");
  basei = await conn.query("SELECT selections FROM Βάσει;");
  anask = await conn.query("SELECT selections FROM \"Ανασκαφ. τεχνική\";");

  runApp(const MyApp());

  //await conn.close();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}
/* -------------- INSERT VARIABLES --------------- */

//here we store all the dropdown values
var arr = [
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

//here we store all the checkbox values
Map<String, bool> CheckBox1Value = {};
Map<String, bool> CheckBox2Value = {};
Map<String, bool> CheckBox3Value = {};
Map<String, bool> CheckBox4Value = {};
Map<String, bool> CheckBox5Value = {};
Map<String, bool> CheckBox6Value = {};


//here we store all the textField values
var arr2 = [
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

var radioarr = [
  0,
  0,
  0,
  0,
  0,
];

/* -------------- SM --------------- */
final itemkey = GlobalKey();
final itemkey2 = GlobalKey();
final itemkey3 = GlobalKey();
final itemkey4 = GlobalKey();
final itemkey5 = GlobalKey();
final itemkey6 = GlobalKey();
final itemkey7 = GlobalKey();
final itemkey8 = GlobalKey();
/* -------------- SKELETOS --------------- */
final itemkey9 = GlobalKey();
final itemkey10 = GlobalKey();
final itemkey11 = GlobalKey();
final itemkey12 = GlobalKey();
final itemkey13 = GlobalKey();
/* -------------- ScrollToTop --------------- */
final itemTop1 = GlobalKey();
final itemTop2 = GlobalKey();

Future scrollToTop1() async {
  final context = itemTop1.currentContext!;

  await Scrollable.ensureVisible(context,
      alignment: 0, duration: Duration(milliseconds: 500));
}

Future scrollToTop2() async {
  final context = itemTop2.currentContext!;

  await Scrollable.ensureVisible(context,
      alignment: 0, duration: Duration(milliseconds: 500));
}

Future scrollToItem() async {
  final context = itemkey.currentContext!;

  await Scrollable.ensureVisible(context,
      alignment: 0, duration: Duration(seconds: 1));
}

Future scrollToItem2() async {
  final context = itemkey2.currentContext!;

  await Scrollable.ensureVisible(context,
      alignment: 0, duration: Duration(seconds: 1));
}

Future scrollToItem3() async {
  final context = itemkey3.currentContext!;

  await Scrollable.ensureVisible(context,
      alignment: 0, duration: Duration(seconds: 1));
}

Future scrollToItem4() async {
  var context = itemkey4.currentContext!;

  await Scrollable.ensureVisible(context,
      alignment: 0, duration: Duration(seconds: 1));
}

Future scrollToItem5() async {
  var context = itemkey5.currentContext!;

  await Scrollable.ensureVisible(context,
      alignment: 0, duration: Duration(seconds: 1));
}

Future scrollToItem6() async {
  var context = itemkey6.currentContext!;

  await Scrollable.ensureVisible(context,
      alignment: 0, duration: Duration(seconds: 1));
}

Future scrollToItem7() async {
  var context = itemkey7.currentContext!;

  await Scrollable.ensureVisible(context,
      alignment: 0, duration: Duration(seconds: 1));
}

Future scrollToItem8() async {
  var context = itemkey8.currentContext!;

  await Scrollable.ensureVisible(context,
      alignment: 0, duration: Duration(seconds: 1));
}

/* ----------------------------- */
Future scrollToItem9() async {
  var context = itemkey9.currentContext!;

  await Scrollable.ensureVisible(context,
      alignment: 0, duration: Duration(seconds: 1));
}

Future scrollToItem10() async {
  var context = itemkey10.currentContext!;

  await Scrollable.ensureVisible(context,
      alignment: 0, duration: Duration(seconds: 1));
}

Future scrollToItem11() async {
  var context = itemkey11.currentContext!;

  await Scrollable.ensureVisible(context,
      alignment: 0, duration: Duration(seconds: 1));
}

Future scrollToItem12() async {
  var context = itemkey12.currentContext!;

  await Scrollable.ensureVisible(context,
      alignment: 0, duration: Duration(seconds: 1));
}

Future scrollToItem13() async {
  var context = itemkey13.currentContext!;

  await Scrollable.ensureVisible(context,
      alignment: 0, duration: Duration(seconds: 1));
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
    SingleChildScrollView(
        //------------------------- SM -------------------------//
        child: Column(children: [
      Container(key: itemTop1, child: TextWidget("Δελτίο ΣΜ", 0)),
      InputText("ΣΜ", 4, 0, 0, 0, ""),
      InputText("Ταυτότητα", 100, 1, 1, 0, ""),
      Container(
          key: itemkey, child: TextWidget("Τύπος Στρωματολογικής Μονάδας", 1)),
      DropDown(),
      InputText("Έτος", 4, 0, 2, 0, ""),
      TextWidget("Κλίση προς", 1),
      DropDown2(),
      InputText("Ανώτ. Υ", 15, 0, 3, 0, ""),
      InputText("Κατώτ. Υ", 15, 0, 4, 0, ""),
      Container(key: itemkey2, child: TextWidget("Συντεταγμένες", 1)),
      InputText("Β", 15, 0, 5, 0, ""),
      InputText("Ν", 15, 0, 6, 0, ""),
      InputText("Α", 15, 0, 7, 0, ""),
      InputText("Δ", 15, 0, 8, 0, ""),
      InputText("Αντίστοιχη με", 33, 0, 9, 0, ""),
      InputText("Σύγχρονη με", 33, 0, 10, 0, ""),
      InputText("Κάτω/πριν από", 33, 0, 11, 0, ""),
      InputText("Πάνω/μετά από", 33, 0, 12, 0, ""),
      Container(key: itemkey3, child: TextWidget("Διαστάσεις", 1)),
      InputText("Μήκος", 16, 0, 13, 0, ""),
      InputText("Πλάτος", 16, 0, 14, 0, ""),
      InputText("Ύψος", 16, 0, 15, 0, ""),
      InputText("Διάμετρος", 16, 0, 16, 0, ""),
      InputText("Βάθος", 16, 0, 17, 0, ""),
      InputText("Πάχος", 16, 0, 18, 0, ""),
      Container(key: itemkey4, child: TextWidget("Κατηγορία/Τύπος", 1)),
      DropDown3(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      TextWidget("Υλικό", 1),
      CheckBox(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      TextWidget("Δομή/Υφή", 1),
      DropDown4(),
      TextWidget("Χρώμα", 1),
      DropDown5(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      Container(key: itemkey5, child: TextWidget("Προσμίξεις", 1)),
      CheckBox2(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      Container(
          key: itemkey6, child: TextWidget("Υλικά/τεχνική κατασκευής", 1)),
      TextWidget("Έχει λίθο;", 1),
      RadioButton(63),
      TextWidget("Έχει Πλίνθο;", 1),
      RadioButton2(64),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      TextWidget("Συνδετικό υλικό(χρώμα)", 1),
      DropDown6(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      Container(child: TextWidget("Επίχρισμα(Υλικό, Χρώμα)", 1)),
      DropDown7(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      DropDown8(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      TextWidget("Έχει Κεραμοπλαστικό διάκοσμο;", 1),
      RadioButton3(65),
      TextWidget("Έχει Spolia;", 1),
      RadioButton4(66),
      TextWidget("Έχει Ξύλο;", 1),
      RadioButton5(67),
      InputText("Μέγεθος Στοιχείων", 100, 1, 19, 0, ""),
      Container(child: TextWidget("Επιλογή Τοιχοποιίας", 1)),
      CheckBox3(),
      InputText("Αριθμός σωζ. δομών", 4, 0, 20, 0, ""),
      TextWidget("Δάπεδο", 1),
      DropDown9(),
      TextWidget("Θέση", 1),
      DropDown10(),
      InputText("Περιγραφή/Ερμηνεία", 100, 1, 21, 0, ""),
      InputText("Χαρακτ. σε σχ. με ΣΜ ", 100, 1, 22, 0, ""),
      InputText("Σχέσεις με ΣΜ", 100, 1, 23, 0, ""),
      Container(key: itemkey7, child: TextWidget("Χρονολόγηση από", 1)),
      DropDown11(),
      TextWidget("Χρονολόγηση μέχρι", 1),
      DropDown12(),
      TextWidget("Βάσει", 1),
      CheckBox4(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      Container(key: itemkey8, child: TextWidget("Ανασκαφ. Τεχνική", 1)),
      CheckBox5(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      TextWidget("Συνθήκες", 1),
      DropDown13(),
      TextWidget("Πιθανότητα Επιμήξεων", 1),
      DropDown14(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      CheckBox6(),
      InputText("Κόσκινο Ποσοστό(%)", 5, 0, 24, 0, ""),
      InputText("Νεροκόσκινο Ποσοστό(%)", 5, 0, 25, 0, ""),
      InputText("Ποσότητα Κεραμικής", 50, 1, 26, 0, ""),
      InputText("Ημερολόγιο(σελ)", 5, 0, 27, 0, ""),
      InputText("Συντάκτης", 50, 1, 28, 0, ""),
      //InputText("Ημερομηνία", 10, 0, 29),
     DateSelection(),
      Container(
          //child: FloatButton(),
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.all(10)),
    ])),
    
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            PopupMenuButton(
                // icon: Icon(Icons.book)

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                itemBuilder: (context) {
                  if (_selectedIndex == 0) {
                    return [
                      PopupMenuItem<int>(
                        value: 0,
                        child: Text(
                          "Τύπος Στρ. Μονάδας",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.blue,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      PopupMenuItem<int>(
                        value: 1,
                        child: Text("Συντεταγμένες",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400)),
                      ),
                      PopupMenuItem<int>(
                        value: 2,
                        child: Text("Διαστάσεις",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400)),
                      ),
                      PopupMenuItem<int>(
                        value: 3,
                        child: Text("Κατηγορία/τύπος",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400)),
                      ),
                      PopupMenuItem<int>(
                        value: 4,
                        child: Text("Προσμίξεις",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400)),
                      ),
                      PopupMenuItem<int>(
                        value: 5,
                        child: Text("Υλικά Κατασκευής",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400)),
                      ),
                      PopupMenuItem<int>(
                        value: 6,
                        child: Text("Χρονολόγηση",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400)),
                      ),
                      PopupMenuItem<int>(
                        value: 7,
                        child: Text("Ανασκαφ. τεχνική",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400)),
                      ),
                    ];
                  } else {
                    return [
                      PopupMenuItem<int>(
                        value: 0,
                        child: Text("Έτος",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400)),
                      ),
                      PopupMenuItem<int>(
                        value: 1,
                        child: Text("Συντεταγμένες",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400)),
                      ),
                      PopupMenuItem<int>(
                        value: 2,
                        child: Text("Διαστάσεις",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400)),
                      ),
                      PopupMenuItem<int>(
                        value: 3,
                        child: Text("Ανατομία",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400)),
                      ),
                    ];
                  }
                },
                onSelected: (value) {
                  // value for drop down id and _selectedIndex = 0: SM, 1: Skeletos
                  if (value == 0 && _selectedIndex == 0) {
                    scrollToItem();
                  } else if (value == 1 && _selectedIndex == 0) {
                    scrollToItem2();
                  } else if (value == 2 && _selectedIndex == 0) {
                    scrollToItem3();
                  } else if (value == 3 && _selectedIndex == 0) {
                    scrollToItem4();
                  } else if (value == 4 && _selectedIndex == 0) {
                    scrollToItem5();
                  } else if (value == 5 && _selectedIndex == 0) {
                    scrollToItem6();
                  } else if (value == 6 && _selectedIndex == 0) {
                    scrollToItem7();
                  } else if (value == 7 && _selectedIndex == 0) {
                    scrollToItem8();
                  } else if (value == 0 && _selectedIndex == 1) {
                    scrollToItem9();
                  } else if (value == 1 && _selectedIndex == 1) {
                    scrollToItem10();
                  } else if (value == 2 && _selectedIndex == 1) {
                    scrollToItem11();
                  } else if (value == 3 && _selectedIndex == 1) {
                    scrollToItem12();
                  }
                }),
          ],
          title: Row(children: [
            TextButton.icon(
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),

              onPressed: () {
                if (_selectedIndex == 0) {
                  scrollToTop1();
                } else if (_selectedIndex == 1) {
                  scrollToTop2();
                }
              },
              icon: Icon(Icons.assured_workload_rounded),

              label: Text(''), // <-- Text
            ),
            Text('Εφαρμογή Αρχαιολόγων'),
          ]),
          backgroundColor: Colors.greenAccent[400],
          centerTitle: false),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        color: Colors.green[100],
        padding: EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [FloatButton2(),FloatButton()],
        )
      )
    );
  }
}
