// ignore_for_file: prefer_const_constructors

import 'package:application/main.dart';
import 'package:flutter/material.dart';

import 'DropDownWidget15.dart';
import 'DropDownWidget16.dart';
import 'DropDownWidget17.dart';
import 'DropDownWidget18.dart';
import 'DropDownWidget34.dart';
import 'DropDownWidget35.dart';
import 'DropDownWidget36.dart';
import 'DropDownWidget37.dart';
import 'InputTextWidget.dart';
import 'SkeletosSearchWidget.dart';
import 'TextWidget.dart';
//import 'main.dart';
import 'FloatingActionButton6Widget.dart';

Future scrollToTop2() async {
  final context = itemTop2.currentContext!;

  await Scrollable.ensureVisible(context,
      alignment: 0, duration: Duration(milliseconds: 500));
}

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

final itemkey9 = GlobalKey();
final itemkey10 = GlobalKey();
final itemkey11 = GlobalKey();
final itemkey12 = GlobalKey();
final itemkey13 = GlobalKey();

final itemTop2 = GlobalKey();

String Skeletosid = "";

class EditSkeletos extends StatelessWidget {
  EditSkeletos(String Skeletosidstr) {
    Skeletosid = Skeletosidstr;
  }
  //const Skeletos({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Επεξεργασία Σκελετού'),
          backgroundColor: Colors.greenAccent[400],
          centerTitle: false,
          actions: [
            PopupMenuButton(
                // icon: Icon(Icons.book)
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                itemBuilder: (context) {
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
                },
                onSelected: (value) {
                  if (value == 0 /*&& _selectedIndex == 1*/) {
                    scrollToItem9();
                  } else if (value == 1 /*&& _selectedIndex == 1*/) {
                    scrollToItem10();
                  } else if (value == 2 /*&& _selectedIndex == 1*/) {
                    scrollToItem11();
                  } else if (value == 3 /*&& _selectedIndex == 1*/) {
                    scrollToItem12();
                  }
                }),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(key: itemTop2, child: TextWidget("Δελτίο Σκελετού", 0)),
            Container(
              key: itemkey9,
              child: InputText("Έτος", 4, 0, 0, 2, arr2_2_2[0]),
            ),
            InputText("ΣΜ Κοψίματος", 4, 0, 1, 2, arr2_2_2[1]),
            InputText("Τομέας", 4, 0, 2,  2, arr2_2_2[2]),
            InputText("Κατασκευή", 6, 1, 3, 2,arr2_2_2[3]),
            InputText("Ενότητα", 7, 1, 4, 2, arr2_2_2[4]),
            InputText("Σύνολο", 100, 1, 5, 2, arr2_2_2[5]),
            InputText("Φάση", 100, 1, 6, 2, arr2_2_2[6]),
            InputText("Ταυτότητα", 100, 1, 7, 2, arr2_2_2[7]),
            InputText("Κάτω/Πριν από", 7, 0, 8, 2, arr2_2_2[8]),
            InputText("Πάνω/Μετά από", 7, 0, 9, 2, arr2_2_2[9]),
            TextWidget("Τύπος Ταφής", 1),
            TextWidget("επιλεγμένο: ${(BurialType!.elementAt(int.parse(SkeletosdropdownArr[0])-1)).toString().replaceAll("[", "").replaceAll("]", "")}", 2),
            DropDown34((BurialType!.elementAt(int.parse(SkeletosdropdownArr[0])-1)).toString().replaceAll("[", "").replaceAll("]", "")),
            TextWidget("Τύπος Τάφου", 1),
            TextWidget("επιλεγμένο: ${(TombType!.elementAt(int.parse(SkeletosdropdownArr[1])-1)).toString().replaceAll("[", "").replaceAll("]", "")}", 2),
            DropDown35((TombType!.elementAt(int.parse(SkeletosdropdownArr[1])-1)).toString().replaceAll("[", "").replaceAll("]", "")),
            Divider(
              thickness: 1,
              color: Colors.greenAccent[700],
            ),
            Container(key: itemkey10, child: TextWidget("Συντεταγμένες", 1)),
            InputText("Β", 15, 0, 10, 2, arr2_2_2[10]),
            InputText("Ν", 15, 0, 11, 2, arr2_2_2[11]),
            InputText("Α", 15, 0, 12, 2, arr2_2_2[12]),
            InputText("Δ", 15, 0, 13, 2, arr2_2_2[13]),
            InputText("Ανώτ. Υ κραν.", 15, 0, 14, 2, arr2_2_2[14]),
            InputText("Κατώτ. Υ κραν.", 15, 0, 15, 2, arr2_2_2[15]),
            Container(key: itemkey11, child: TextWidget("Διαστάσεις", 1)),
            InputText("Μήκος", 16, 0, 16, 2, arr2_2_2[16]),
            InputText("Πλάτος", 16, 0, 17, 2, arr2_2_2[17]),
            InputText("Βάθος", 16, 0, 18, 2, arr2_2_2[18]),
            TextWidget("Οστά", 1),
            TextWidget("επιλεγμένο: ${(Bones!.elementAt(int.parse(SkeletosdropdownArr[2])-1)).toString().replaceAll("[", "").replaceAll("]", "")}", 2),
            DropDown36((Bones!.elementAt(int.parse(SkeletosdropdownArr[2])-1)).toString().replaceAll("[", "").replaceAll("]", "")),
            TextWidget("Ταφή", 1),
            TextWidget("επιλεγμένο: ${(Burial!.elementAt(int.parse(SkeletosdropdownArr[3])-1)).toString().replaceAll("[", "").replaceAll("]", "")}", 2),
            DropDown37((Burial!.elementAt(int.parse(SkeletosdropdownArr[3])-1)).toString().replaceAll("[", "").replaceAll("]", "")),
            InputText("Προσανατολισμός", 50, 1, 19, 2, arr2_2_2[19]),
            Container(key: itemkey12, child: TextWidget("Ανατομία Σώματος", 1)),
            InputText("Γενική στάση σώματος", 50, 1, 20, 2, arr2_2_2[20]),
            InputText("Κεφάλι", 50, 1, 21, 2, arr2_2_2[21]),
            InputText("Κορμός", 50, 1, 22, 2, arr2_2_2[22]),
            InputText("Δεξί χέρι", 50, 1, 23, 2, arr2_2_2[23]),
            InputText("Αριστερό χέρι", 50, 1, 24, 2, arr2_2_2[24]),
            InputText("Δεξί πόδι", 50, 1, 25, 2, arr2_2_2[25]),
            InputText("Αριστερό πόδι", 50, 1, 26, 2, arr2_2_2[26]),
            InputText("Περιγραφή/Σχόλια", 50, 1, 27, 2, arr2_2_2[27]),
            InputText("Y. σκελετού κατά χώραν", 10, 0, 28, 2, arr2_2_2[28]),
            InputText("Μήκ. μηριαίου οστού", 10, 0, 29, 2, arr2_2_2[29]),
            InputText("Συνευρήματα (με Α/Α)", 50, 1, 30, 2, arr2_2_2[30]),
            InputText("Ανασκ. τεχνική", 50, 1, 31, 2, arr2_2_2[31]),
            InputText("Συνθήκες", 50, 1, 32, 2, arr2_2_2[32]),
          ]),
        ),
        bottomNavigationBar: Container(
            color: Colors.green[100],
            padding: EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [FloatButton6(Skeletosid)],
            )));
  }
}
