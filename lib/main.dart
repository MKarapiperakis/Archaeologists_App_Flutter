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
  timer1 = Timer.periodic(Duration(seconds: 10), (Timer t1) async => Synthetic = await conn.query("SELECT selections FROM \"?????????????????? ??????????\""));
  timer2 = Timer.periodic(Duration(seconds: 10), (Timer t2) async => Coating_color = await conn.query("SELECT selections FROM \"?????????????????? (??????????)\""));
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


  SMType = await conn.query("SELECT selections FROM ??????????????");
  Direction = await conn.query("SELECT selections FROM \"?????????? ????????\"");
  Category = await conn.query("SELECT selections FROM \"??????????????????/??????????\"");
  Structure = await conn.query("SELECT selections FROM \"????????/??????\"");
  Color1 = await conn.query("SELECT selections FROM ??????????");
  Synthetic = await conn.query("SELECT selections FROM \"?????????????????? ??????????\"");
  Coating_material = await conn.query("SELECT selections FROM \"??????????????????(??????????)\"");
  Coating_color = await conn.query("SELECT selections FROM \"?????????????????? (??????????)\"");
  Floor = await conn.query("SELECT selections FROM ????????????");
  Place = await conn.query("SELECT selections FROM ????????");
  Datingfrom = await conn.query("SELECT selections FROM \"?????????????????????? ??????\"");
  Datingto = await conn.query("SELECT selections FROM \"?????????????????????? ??????????\"");
  Conditions = await conn.query("SELECT selections FROM ????????????????");
  Mixingpossib =
      await conn.query("SELECT selections FROM \"???????????????????? ??????????????????\"");
  BurialType = await conn.query("SELECT selections FROM \"?????????? ??????????\"");
  TombType = await conn.query("SELECT selections FROM \"?????????? ??????????\"");
  Bones = await conn.query("SELECT selections FROM ????????");
  Burial = await conn.query("SELECT selections FROM ????????");
  Stone = await conn.query("SELECT selections FROM \"???????????????? ??????????\" ");

  //-------------------------------- CHECKBOX -------------------------------------------\\

  material = await conn.query("SELECT selections FROM ??????????;");
  prosm = await conn.query("SELECT selections FROM ????????????????????;");
  toixop = await conn.query("SELECT selections FROM ????????????????????;");
  basei = await conn.query("SELECT selections FROM ??????????;");
  anask = await conn.query("SELECT selections FROM \"??????????????. ??????????????\";");

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
      Container(key: itemTop1, child: TextWidget("???????????? ????", 0)),
      InputText("????", 4, 0, 0, 0, ""),
      InputText("??????????????????", 100, 1, 1, 0, ""),
      Container(
          key: itemkey, child: TextWidget("?????????? ?????????????????????????????? ??????????????", 1)),
      DropDown(),
      InputText("????????", 4, 0, 2, 0, ""),
      TextWidget("?????????? ????????", 1),
      DropDown2(),
      InputText("????????. ??", 15, 0, 3, 0, ""),
      InputText("??????????. ??", 15, 0, 4, 0, ""),
      Container(key: itemkey2, child: TextWidget("??????????????????????????", 1)),
      InputText("??", 15, 0, 5, 0, ""),
      InputText("??", 15, 0, 6, 0, ""),
      InputText("??", 15, 0, 7, 0, ""),
      InputText("??", 15, 0, 8, 0, ""),
      InputText("???????????????????? ????", 33, 0, 9, 0, ""),
      InputText("???????????????? ????", 33, 0, 10, 0, ""),
      InputText("????????/???????? ??????", 33, 0, 11, 0, ""),
      InputText("????????/???????? ??????", 33, 0, 12, 0, ""),
      Container(key: itemkey3, child: TextWidget("????????????????????", 1)),
      InputText("??????????", 16, 0, 13, 0, ""),
      InputText("????????????", 16, 0, 14, 0, ""),
      InputText("????????", 16, 0, 15, 0, ""),
      InputText("??????????????????", 16, 0, 16, 0, ""),
      InputText("??????????", 16, 0, 17, 0, ""),
      InputText("??????????", 16, 0, 18, 0, ""),
      Container(key: itemkey4, child: TextWidget("??????????????????/??????????", 1)),
      DropDown3(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      TextWidget("??????????", 1),
      CheckBox(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      TextWidget("????????/??????", 1),
      DropDown4(),
      TextWidget("??????????", 1),
      DropDown5(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      Container(key: itemkey5, child: TextWidget("????????????????????", 1)),
      CheckBox2(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      Container(
          key: itemkey6, child: TextWidget("??????????/?????????????? ????????????????????", 1)),
      TextWidget("???????? ????????;", 1),
      RadioButton(63),
      TextWidget("???????? ????????????;", 1),
      RadioButton2(64),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      TextWidget("?????????????????? ??????????(??????????)", 1),
      DropDown6(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      Container(child: TextWidget("??????????????????(??????????, ??????????)", 1)),
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
      TextWidget("???????? ???????????????????????????? ????????????????;", 1),
      RadioButton3(65),
      TextWidget("???????? Spolia;", 1),
      RadioButton4(66),
      TextWidget("???????? ????????;", 1),
      RadioButton5(67),
      InputText("?????????????? ??????????????????", 100, 1, 19, 0, ""),
      Container(child: TextWidget("?????????????? ??????????????????????", 1)),
      CheckBox3(),
      InputText("?????????????? ??????. ??????????", 4, 0, 20, 0, ""),
      TextWidget("????????????", 1),
      DropDown9(),
      TextWidget("????????", 1),
      DropDown10(),
      InputText("??????????????????/????????????????", 100, 1, 21, 0, ""),
      InputText("????????????. ???? ????. ???? ???? ", 100, 1, 22, 0, ""),
      InputText("?????????????? ???? ????", 100, 1, 23, 0, ""),
      Container(key: itemkey7, child: TextWidget("?????????????????????? ??????", 1)),
      DropDown11(),
      TextWidget("?????????????????????? ??????????", 1),
      DropDown12(),
      TextWidget("??????????", 1),
      CheckBox4(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      Container(key: itemkey8, child: TextWidget("??????????????. ??????????????", 1)),
      CheckBox5(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      TextWidget("????????????????", 1),
      DropDown13(),
      TextWidget("???????????????????? ??????????????????", 1),
      DropDown14(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      CheckBox6(),
      InputText("?????????????? ??????????????(%)", 5, 0, 24, 0, ""),
      InputText("?????????????????????? ??????????????(%)", 5, 0, 25, 0, ""),
      InputText("???????????????? ??????????????????", 50, 1, 26, 0, ""),
      InputText("????????????????????(??????)", 5, 0, 27, 0, ""),
      InputText("??????????????????", 50, 1, 28, 0, ""),
      //InputText("????????????????????", 10, 0, 29),
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
                          "?????????? ??????. ??????????????",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.blue,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      PopupMenuItem<int>(
                        value: 1,
                        child: Text("??????????????????????????",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400)),
                      ),
                      PopupMenuItem<int>(
                        value: 2,
                        child: Text("????????????????????",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400)),
                      ),
                      PopupMenuItem<int>(
                        value: 3,
                        child: Text("??????????????????/??????????",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400)),
                      ),
                      PopupMenuItem<int>(
                        value: 4,
                        child: Text("????????????????????",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400)),
                      ),
                      PopupMenuItem<int>(
                        value: 5,
                        child: Text("?????????? ????????????????????",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400)),
                      ),
                      PopupMenuItem<int>(
                        value: 6,
                        child: Text("??????????????????????",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400)),
                      ),
                      PopupMenuItem<int>(
                        value: 7,
                        child: Text("??????????????. ??????????????",
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
                        child: Text("????????",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400)),
                      ),
                      PopupMenuItem<int>(
                        value: 1,
                        child: Text("??????????????????????????",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400)),
                      ),
                      PopupMenuItem<int>(
                        value: 2,
                        child: Text("????????????????????",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400)),
                      ),
                      PopupMenuItem<int>(
                        value: 3,
                        child: Text("????????????????",
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
            Text('???????????????? ??????????????????????'),
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
