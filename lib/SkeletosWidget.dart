import 'package:flutter/material.dart';

import 'DropDownWidget15.dart';
import 'DropDownWidget16.dart';
import 'DropDownWidget17.dart';
import 'DropDownWidget18.dart';
import 'InputTextWidget.dart';
import 'TextWidget.dart';
//import 'main.dart';
import 'FloatingActionButton3Widget.dart';


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




class Skeletos extends StatelessWidget {
  String SMidstr = "";

  Skeletos(String SMidstr)
  {
    this.SMidstr = SMidstr;
    //print(SMidstr);
  }
  //const Skeletos({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Εφαρμογή Αρχαιολόγων'),
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
          child: InputText("Έτος", 4, 0, 30, 0, ""),
        ),
        InputText("ΣΜ Κοψίματος", 4, 0, 31, 0, ""),
        InputText("Τομέας", 4, 0, 32, 0, ""),
        InputText("Κατασκευή", 6, 1, 33, 0, ""),
        InputText("Ενότητα", 7, 1, 34, 0, ""),
        InputText("Σύνολο", 100, 1, 35, 0, ""),
        InputText("Φάση", 100, 1, 36, 0, ""),
        InputText("Ταυτότητα", 100, 1, 37, 0, ""),
        InputText("Κάτω/Πριν από", 7, 0, 38, 0, ""),
        InputText("Πάνω/Μετά από", 7, 0, 39, 0, ""),
        TextWidget("Τύπος Ταφής", 1),
        DropDown15(),
        TextWidget("Τύπος Τάφου", 1),
        DropDown16(),
        Divider(
          thickness: 1,
          color: Colors.greenAccent[700],
        ),
        Container(key: itemkey10, child: TextWidget("Συντεταγμένες", 1)),
        InputText("Β", 15, 0, 40, 0, ""),
        InputText("Ν", 15, 0, 41, 0, ""),
        InputText("Α", 15, 0, 42, 0, ""),
        InputText("Δ", 15, 0, 43, 0, ""),
        InputText("Ανώτ. Υ κραν.", 15, 0, 44, 0, ""),
        InputText("Κατώτ. Υ κραν.", 15, 0, 45, 0, ""),
        Container(key: itemkey11, child: TextWidget("Διαστάσεις", 1)),
        InputText("Μήκος", 16, 0, 46, 0, ""),
        InputText("Πλάτος", 16, 0, 47, 0, ""),
        InputText("Βάθος", 16, 0, 48, 0, ""),
        TextWidget("Οστά", 1),
        DropDown17(),
        TextWidget("Ταφή", 1),
        DropDown18(),
        InputText("Προσανατολισμός", 50, 1, 49, 0, ""),
        Container(key: itemkey12, child: TextWidget("Ανατομία Σώματος", 1)),
        InputText("Γενική στάση σώματος", 50, 1, 50, 0, ""),
        InputText("Κεφάλι", 50, 1, 51, 0, ""),
        InputText("Κορμός", 50, 1, 52, 0, ""),
        InputText("Δεξί χέρι", 50, 1, 53, 0, ""),
        InputText("Αριστερό χέρι", 50, 1, 54, 0, ""),
        InputText("Δεξί πόδι", 50, 1, 55, 0, ""),
        InputText("Αριστερό πόδι", 50, 1, 56, 0, ""),
        InputText("Περιγραφή/Σχόλια", 50, 1, 57, 0, ""),
        InputText("Y. σκελετού κατά χώραν", 10, 0, 58, 0, ""),
        InputText("Μήκ. μηριαίου οστού", 10, 0, 59, 0, ""),
        InputText("Συνευρήματα (με Α/Α)", 50, 1, 60, 0, ""),
        InputText("Ανασκ. τεχνική", 50, 1, 61, 0, ""),
        InputText("Συνθήκες", 50, 1, 62, 0, ""),
          ]),
      ),

      bottomNavigationBar: Container(
        color: Colors.green[100],
        padding: EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [FloatButton3(SMidstr)],
        )
      )
    );
  }
}