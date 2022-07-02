// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:application/DateSelectionWidget.dart';
import 'package:flutter/material.dart';
import 'CheckBoxWidget10.dart';
import 'CheckBoxWidget11.dart';
import 'CheckBoxWidget12.dart';
import 'CheckBoxWidget7.dart';
import 'CheckBoxWidget8.dart';
import 'CheckBoxWidget9.dart';
import 'DateSelection2Widget.dart';
import 'DropDownWidget20.dart';
import 'DropDownWidget21.dart';
import 'DropDownWidget22.dart';
import 'DropDownWidget23.dart';
import 'DropDownWidget24.dart';
import 'DropDownWidget25.dart';
import 'DropDownWidget26.dart';
import 'DropDownWidget27.dart';
import 'DropDownWidget28.dart';
import 'DropDownWidget29.dart';
import 'DropDownWidget30.dart';
import 'DropDownWidget31.dart';
import 'DropDownWidget32.dart';
import 'DropDownWidget33.dart';
import 'DropDownWidget38.dart';
import 'SearchWidget.dart';
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
import 'dart:io';
import 'dart:convert';
import 'package:postgres/postgres.dart';
import 'CheckBoxWidget6.dart';
//import 'main.dart';
import 'FloatingActionButton5Widget.dart';
import 'main.dart';




final EditSMitemkey = GlobalKey();
final EditSMitemkey2 = GlobalKey();
final EditSMitemkey3 = GlobalKey();
final EditSMitemkey4 = GlobalKey();
final EditSMitemkey5 = GlobalKey();
final EditSMitemkey6 = GlobalKey();
final EditSMitemkey7 = GlobalKey();
final EditSMitemkey8 = GlobalKey();

final EditSMitemTop1 = GlobalKey();

Future EditSMscrollToTop1() async {
  final context2 = EditSMitemTop1.currentContext!;

  await Scrollable.ensureVisible(context2,
      alignment: 0, duration: Duration(milliseconds: 500));
}

Future EditSMscrollToItem() async {
  final context2 = EditSMitemkey.currentContext!;

  await Scrollable.ensureVisible(context2,
      alignment: 0, duration: Duration(seconds: 1));
}

Future EditSMscrollToItem2() async {
  final context2 = EditSMitemkey2.currentContext!;

  await Scrollable.ensureVisible(context2,
      alignment: 0, duration: Duration(seconds: 1));
}

Future EditSMscrollToItem3() async {
  final context2 = EditSMitemkey3.currentContext!;

  await Scrollable.ensureVisible(context2,
      alignment: 0, duration: Duration(seconds: 1));
}

Future EditSMscrollToItem4() async {
  var context2 = EditSMitemkey4.currentContext!;

  await Scrollable.ensureVisible(context2,
      alignment: 0, duration: Duration(seconds: 1));
}

Future EditSMscrollToItem5() async {
  var context2 = EditSMitemkey5.currentContext!;

  await Scrollable.ensureVisible(context2,
      alignment: 0, duration: Duration(seconds: 1));
}

Future EditSMscrollToItem6() async {
  var context2 = EditSMitemkey6.currentContext!;

  await Scrollable.ensureVisible(context2,
      alignment: 0, duration: Duration(seconds: 1));
}

Future EditSMscrollToItem7() async {
  var context2 = EditSMitemkey7.currentContext!;

  await Scrollable.ensureVisible(context2,
      alignment: 0, duration: Duration(seconds: 1));
}

Future EditSMscrollToItem8() async {
  var context2 = EditSMitemkey8.currentContext!;

  await Scrollable.ensureVisible(context2,
      alignment: 0, duration: Duration(seconds: 1));
}

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

int ID_SM = 0;

class EditSM extends StatefulWidget {
  // const EditSM({Key? key}) : super(key: key);
  int ID_SM2 = 0;
  EditSM(String header) {
    this.ID_SM2 = int.parse(header);
    ID_SM = ID_SM2;

    
  }
  @override
  State<EditSM> createState() => _EditSMState();
}

class _EditSMState extends State<EditSM> {
  int _selectedIndex = 0;
  TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
    SingleChildScrollView(
        
        //------------------------- SM -------------------------//
        child: Column(children: [
      Container(key: EditSMitemTop1, child: TextWidget("Δελτίο ΣΜ", 0)),

      //InputText("ΣΜ", 4, 0, 0, 1, arr2_2[0]),
      InputText("Ταυτότητα", 100, 1, 1, 1, arr2_2[1]),
      Container(
          key: EditSMitemkey,
          child: TextWidget("Τύπος Στρωματολογικής Μονάδας", 1)),
      TextWidget("επιλεγμένο: ${(SMType!.elementAt(int.parse(dropdownArr[0])-1)).toString().replaceAll("[", "").replaceAll("]", "")}", 2),
      DropDown20((SMType!.elementAt(int.parse(dropdownArr[0])-1)).toString().replaceAll("[", "").replaceAll("]", "")),
      InputText("Έτος", 4, 0, 2, 1, arr2_2[2]),
      TextWidget("Κλίση προς", 1),
      TextWidget("επιλεγμένο: ${(Direction!.elementAt(int.parse(dropdownArr[1])-1)).toString().replaceAll("[", "").replaceAll("]", "")}", 2),
      DropDown21((Direction!.elementAt(int.parse(dropdownArr[1])-1)).toString().replaceAll("[", "").replaceAll("]", "")),
      InputText("Ανώτ. Υ", 15, 0, 3, 1, arr2_2[3]),
      InputText("Κατώτ. Υ", 15, 0, 4, 1, arr2_2[4]),
      Container(key: EditSMitemkey2, child: TextWidget("Συντεταγμένες", 1)),
      InputText("Β", 15, 0, 5, 1, arr2_2[5]),
      InputText("Ν", 15, 0, 6, 1, arr2_2[6]),
      InputText("Α", 15, 0, 7, 1, arr2_2[7]),
      InputText("Δ", 15, 0, 8, 1, arr2_2[8]),
      InputText("Αντίστοιχη με", 33, 0, 9, 1, arr2_2[9]),
      InputText("Σύγχρονη με", 33, 0, 10, 1, arr2_2[10]),
      InputText("Κάτω/πριν από", 33, 0, 11, 1, arr2_2[11]),
      InputText("Πάνω/μετά από", 33, 0, 12, 1, arr2_2[12]),
      Container(key: EditSMitemkey3, child: TextWidget("Διαστάσεις", 1)),
      InputText("Μήκος", 16, 0, 13, 1, arr2_2[13]),
      InputText("Πλάτος", 16, 0, 14, 1, arr2_2[14]),
      InputText("Ύψος", 16, 0, 15, 1, arr2_2[15]),
      InputText("Διάμετρος", 16, 0, 16, 1, arr2_2[16]),
      InputText("Βάθος", 16, 0, 17, 1, arr2_2[17]),
      InputText("Πάχος", 16, 0, 18, 1, arr2_2[18]),
      Container(key: EditSMitemkey4, child: TextWidget("Κατηγορία/Τύπος", 1)),
       TextWidget("επιλεγμένο: ${(Category!.elementAt(int.parse(dropdownArr[2])-1)).toString().replaceAll("[", "").replaceAll("]", "")}", 2),
      DropDown22((Category!.elementAt(int.parse(dropdownArr[2])-1)).toString().replaceAll("[", "").replaceAll("]", "")),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      TextWidget("Υλικό", 1),
      CheckBox7(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      TextWidget("Δομή/Υφή", 1),
       TextWidget("επιλεγμένο: ${(Structure!.elementAt(int.parse(dropdownArr[3])-1)).toString().replaceAll("[", "").replaceAll("]", "")}", 2),
      DropDown23((Structure!.elementAt(int.parse(dropdownArr[3])-1)).toString().replaceAll("[", "").replaceAll("]", "")),
      TextWidget("Χρώμα", 1),
      TextWidget("επιλεγμένο: ${(Color1!.elementAt(int.parse(dropdownArr[4])-1)).toString().replaceAll("[", "").replaceAll("]", "")}", 2),
      DropDown24((Color1!.elementAt(int.parse(dropdownArr[4])-1)).toString().replaceAll("[", "").replaceAll("]", "")),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      Container(key: EditSMitemkey5, child: TextWidget("Προσμίξεις", 1)),
      CheckBox8(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      Container(
          key: EditSMitemkey6,
          child: TextWidget("Υλικά/τεχνική κατασκευής", 1)),
         
      InputText("Λίθος Κείμενο", 50, 1, 63, 1, radiobuttonsOptions[0]),
        TextWidget("Επιλογές Λίθου", 1),
      TextWidget("επιλεγμένο: ${(Stone!.elementAt(int.parse(dropdownArr[14])-1)).toString().replaceAll("[", "").replaceAll("]", "")}", 2),
      DropDown38((Stone!.elementAt(int.parse(dropdownArr[14])-1)).toString().replaceAll("[", "").replaceAll("]", "")),
      InputText("Πλίνθος Κείμενο", 50, 1, 64, 1, radiobuttonsOptions[1]),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      TextWidget("Συνδετικό υλικό(χρώμα)", 1),
      TextWidget("επιλεγμένο: ${(Synthetic!.elementAt(int.parse(dropdownArr[5]))).toString().replaceAll("[", "").replaceAll("]", "")}", 2),
      DropDown25((Synthetic!.elementAt(int.parse(dropdownArr[5]))).toString().replaceAll("[", "").replaceAll("]", "")),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      Container(child: TextWidget("Επίχρισμα(Υλικό, Χρώμα)", 1)),
      TextWidget("επιλεγμένο: ${(Coating_material!.elementAt(int.parse(dropdownArr[6])-1)).toString().replaceAll("[", "").replaceAll("]", "")}", 2),
      DropDown26((Coating_material!.elementAt(int.parse(dropdownArr[6])-1)).toString().replaceAll("[", "").replaceAll("]", "")),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
       TextWidget("επιλεγμένο: ${(Coating_color!.elementAt(int.parse(dropdownArr[7]))).toString().replaceAll("[", "").replaceAll("]", "")}", 2),
      DropDown27((Coating_color!.elementAt(int.parse(dropdownArr[7]))).toString().replaceAll("[", "").replaceAll("]", "")),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      InputText("Κεραμοπλαστικός Διάκοσμος", 50, 1, 65, 1, radiobuttonsOptions[2]),
      InputText("Spolia", 50, 1, 66, 1, radiobuttonsOptions[3]),
      InputText("Ξύλο", 50, 1, 67, 1, radiobuttonsOptions[4]),
      InputText("Μέγεθος Στοιχείων", 100, 1, 19, 1, arr2_2[19]),
      Container(child: TextWidget("Επιλογή Τοιχοποιίας", 1)),
      CheckBox9(),
      InputText("Αριθμός σωζ. δομών", 4, 0, 20, 1, arr2_2[20]),
      TextWidget("Δάπεδο", 1),
      TextWidget("επιλεγμένο: ${(Floor!.elementAt(int.parse(dropdownArr[8])-1)).toString().replaceAll("[", "").replaceAll("]", "")}", 2),
      DropDown28((Floor!.elementAt(int.parse(dropdownArr[8])-1)).toString().replaceAll("[", "").replaceAll("]", "")),
      TextWidget("Θέση", 1),
     TextWidget("επιλεγμένο: ${(Place!.elementAt(int.parse(dropdownArr[9])-1)).toString().replaceAll("[", "").replaceAll("]", "")}", 2),
      DropDown29((Place!.elementAt(int.parse(dropdownArr[9])-1)).toString().replaceAll("[", "").replaceAll("]", "")),
      InputText("Περιγραφή/Ερμηνεία", 100, 1, 21, 1, arr2_2[21]),
      InputText("Χαρακτ. σε σχ. με ΣΜ ", 100, 1, 22, 1, arr2_2[22]),
      InputText("Σχέσεις με ΣΜ", 100, 1, 23, 1, arr2_2[23]),
      Container(key: EditSMitemkey7, child: TextWidget("Χρονολόγηση από", 1)),
       TextWidget("επιλεγμένο: ${(Datingfrom!.elementAt(int.parse(dropdownArr[10])-1)).toString().replaceAll("[", "").replaceAll("]", "")}", 2),
      DropDown30((Datingfrom!.elementAt(int.parse(dropdownArr[10])-1)).toString().replaceAll("[", "").replaceAll("]", "")),
      TextWidget("Χρονολόγηση μέχρι", 1),
      TextWidget("επιλεγμένο: ${(Datingto!.elementAt(int.parse(dropdownArr[11])-1)).toString().replaceAll("[", "").replaceAll("]", "")}", 2),
      DropDown31((Datingto!.elementAt(int.parse(dropdownArr[11])-1)).toString().replaceAll("[", "").replaceAll("]", "")),
      TextWidget("Βάσει", 1),
      CheckBox10(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      Container(key: EditSMitemkey8, child: TextWidget("Ανασκαφ. Τεχνική", 1)),
      CheckBox11(),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      TextWidget("Συνθήκες", 1),
      TextWidget("επιλεγμένο: ${(Conditions!.elementAt(int.parse(dropdownArr[12])-1)).toString().replaceAll("[", "").replaceAll("]", "")}", 2),
      DropDown32((Conditions!.elementAt(int.parse(dropdownArr[12])-1)).toString().replaceAll("[", "").replaceAll("]", "")),
      TextWidget("Πιθανότητα Επιμήξεων", 1),
      TextWidget("επιλεγμένο: ${(Mixingpossib!.elementAt(int.parse(dropdownArr[13])-1)).toString().replaceAll("[", "").replaceAll("]", "")}", 2),
      DropDown33((Mixingpossib!.elementAt(int.parse(dropdownArr[13])-1)).toString().replaceAll("[", "").replaceAll("]", "")),
      Divider(
        thickness: 1,
        color: Colors.greenAccent[700],
      ),
      CheckBox12(),
      InputText("Κόσκινο Ποσοστό(%)", 5, 0, 24, 1, arr2_2[24]),
      InputText("Νεροκόσκινο Ποσοστό(%)", 5, 0, 25, 1, arr2_2[25]),
      InputText("Ποσότητα Κεραμικής", 50, 1, 26, 1, arr2_2[26]),
      InputText("Ημερολόγιο(σελ)", 5, 0, 27, 1, arr2_2[27]),
      InputText("Συντάκτης", 50, 1, 28, 1, arr2_2[28]),
      TextWidget("Ημερομηνία: ${arr2_2[29]} ", 1),
      DateSelection2(),
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
                      EditSMscrollToItem();
                    } else if (value == 1 && _selectedIndex == 0) {
                      EditSMscrollToItem2();
                    } else if (value == 2 && _selectedIndex == 0) {
                      EditSMscrollToItem3();
                    } else if (value == 3 && _selectedIndex == 0) {
                      EditSMscrollToItem4();
                    } else if (value == 4 && _selectedIndex == 0) {
                      EditSMscrollToItem5();
                    } else if (value == 5 && _selectedIndex == 0) {
                      EditSMscrollToItem6();
                    } else if (value == 6 && _selectedIndex == 0) {
                      EditSMscrollToItem7();
                    } else if (value == 7 && _selectedIndex == 0) {
                      EditSMscrollToItem8();
                    } else if (value == 0 && _selectedIndex == 1) {}
                  }),
            ],
            title: Row(children: [
              TextButton.icon(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),

                onPressed: () {
                  if (_selectedIndex == 0) {
                    EditSMscrollToTop1();
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [FloatButton5(ID_SM)],
            )));
  }
}
