// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'dart:ui';

import 'package:application/DropDownWidget.dart';
import 'package:application/FloatingActionButton5Widget.dart';
import 'package:application/main.dart';
import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';
import 'FloatingActionButton4Widget.dart';
import 'EditSMWidget.dart';
import 'SkeletosSearchWidget.dart';
import 'SkeletosWidget.dart';

//import 'main.dart';
List<List<dynamic>>? ListID;
List<List<dynamic>>? SMID;
List<List<dynamic>>? TautothtaID;
List<List<dynamic>>? HmeromhniaID;
List<List<dynamic>>? SyntakthsID;
List<List<dynamic>>? SkeletoiIDs;

List<List<dynamic>>? idSynthetic;
List<List<dynamic>>? idCoating_color;

var radiobuttonsOptions = ['','','','',''];


List<List<dynamic>>? TypeSelections;

class Item {
  final String header;
  final String body;
  final String body2;
  final String body3;
  final String body4;
  bool isExpanded = false;

  Item(
      {required this.header,
      required this.body,
      required this.body2,
      required this.body3,
      required this.body4,
      this.isExpanded = false});
}
var tmpdropdownArr = [
  '',
  ''
];

var dropdownArr = [
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

var arr2_2 = [
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
bool kosk = false;
bool ner = false;

var checkboxValues = ['', '', '', '', '', '', '', ''];

var checkboxIDs = ['', '', '', '', '', ''];

var checkbox1val;
var checkbox1id;
var checkbox2val;
var checkbox2id;
var checkbox3val;
var checkbox3id;
var checkbox4val;
var checkbox4id;
var checkbox5val;
var checkbox5id;
var checkbox6val;
var checkbox6id;

Map<String, bool> CheckB1 = {};
Map<String, bool> CheckB2 = {};
Map<String, bool> CheckB3 = {};
Map<String, bool> CheckB4 = {};
Map<String, bool> CheckB5 = {};
Map<String, bool> CheckB6 = {};

Map<String, bool> CheckBox1Val = {};
Map<String, bool> CheckBox2Val = {};
Map<String, bool> CheckBox3Val = {};
Map<String, bool> CheckBox4Val = {};
Map<String, bool> CheckBox5Val = {};
Map<String, bool> CheckBox6Val = {};

var items1 = [];
var items2 = [];
var items3 = [];
var items4 = [];
var items5 = [];
var items6 = [];

bool flag = false;
String _Text = "";
int id = 0;

final conn = PostgreSQLConnection(
    'hilon.dit.uop.gr', //host
    5432, //port
    'db3u04', //database name
    username: 'db3u04',
    password: 'FmAF7P2A');

class Search extends StatelessWidget {
  Search(SMListTemp, SMCodeTemp, TautothtaTemp, HmeromhniaTemp, SyntakthsTemp) {
    ListID = SMListTemp;
    SMID = SMCodeTemp;
    TautothtaID = TautothtaTemp;
    HmeromhniaID = HmeromhniaTemp;
    SyntakthsID = SyntakthsTemp;

    database();
  }

  void database() {
    for (int i = 0; i < ListID!.length; i++) {
      String date = HmeromhniaID![i].toString();
      if (date.length > 9) {
        date = date.substring(
            0, date.length - 15); //we remove the timezone from the date
      }
      ids.add(
        Item(
            header: ListID!
                .elementAt(i)
                .toString()
                .replaceAll("[", "")
                .replaceAll("]", ""),
            body:
                "?????????????? ????: ${SMID![i].toString().replaceAll("[", "").replaceAll("]", "").replaceAll("null", "?????????? ????????")} ",
            body2:
                "????????????????????: ${date.toString().replaceAll("[", "").replaceAll("]", "").replaceAll("null", "?????????? ????????")} ",
            body3:
                "??????????????????: ${SyntakthsID![i].toString().replaceAll("[", "").replaceAll("]", "").replaceAll("null", "?????????? ????????")} ",
            body4:
                "??????????????????: ${TautothtaID![i].toString().replaceAll("[", "").replaceAll("]", "").replaceAll("null", "?????????? ????????")} "),
      );
    }
  }

  List<Item> ids = [
    // Item(header: "id1", body: "test"),
    // Item(header: "id2", body: "test2")
  ];

  @override
  Widget build(BuildContext context) {
    List<List<dynamic>>? SkeletosID;
    List<List<dynamic>>? SMKopsimatosID = [];
    List<List<dynamic>>? SMKopsimatosIDTemp = [];
    List<List<dynamic>>? EnothtaID = [];
    List<List<dynamic>>? EnothtaIDTemp = [];
    List<List<dynamic>>? SyntakthsID = [];
    List<List<dynamic>>? SyntakthsIDTemp = [];
    List<List<dynamic>>? TautothtaID = [];
    List<List<dynamic>>? TautothtaIDTemp = [];

    return Scaffold(
      appBar: AppBar(
        title: const Text('???????????????????????? ????????????????????'),
        backgroundColor: Colors.greenAccent[400],
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          ExpansionPanelList.radio(
            children: ids
                .map((item) => ExpansionPanelRadio(
                    backgroundColor: Colors.red[50],
                    canTapOnHeader: true,
                    value: item.header,
                    headerBuilder: (context, isExpanded) => ListTile(
                          title: Text(
                            item.header,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blueAccent[400],
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                    body: Column(children: [
                      FloatingActionButton.extended(
                        //skeletoi parathyro
                        onPressed: () async {
                          if (conn.isClosed) {
                            await conn.open();
                          }

                          SMKopsimatosIDTemp.clear();
                          EnothtaIDTemp.clear();
                          SyntakthsIDTemp.clear();
                          TautothtaIDTemp.clear();
                          SkeletosID = await conn.query(
                              "SELECT ????????????????id FROM \"???????? ??????????????\" where ????id = ${item.header} ;");
                          //print(SkeletosID);
                          for (int i = 0; i < SkeletosID!.length; i++) {
                            var temp = int.parse(SkeletosID![i]
                                .toString()
                                .replaceAll("[", "")
                                .replaceAll("]", ""));

                            SMKopsimatosID = await conn.query(
                                "SELECT \"???? ??????????????????\" FROM ???????????????? where id = $temp ;");

                            EnothtaID = await conn.query(
                                "SELECT \"??????????????\" FROM ???????????????? where id = $temp ;");

                            SyntakthsID = await conn.query(
                                "SELECT \"??????????????????/????????????\" FROM ???????????????? where id = $temp ;");
                            TautothtaID = await conn.query(
                                "SELECT ?????????????????? FROM ???????????????? where id = $temp ;");

                            SMKopsimatosIDTemp.add(SMKopsimatosID!);
                            EnothtaIDTemp.add(EnothtaID!);
                            SyntakthsIDTemp.add(SyntakthsID!);
                            TautothtaIDTemp.add(TautothtaID!);
                          }

                          showDialog(
                            context: context,
                            barrierDismissible: false, // user must tap button!
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.greenAccent[400],
                                title: const Text(
                                  '???????????????? ?????? ???????????????? ?????????? ?????? ????;',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400),
                                ),
                                content: SingleChildScrollView(),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text(
                                      '??????',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    onPressed: () async {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    child: const Text('??????',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20)),
                                    onPressed: () async {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SkeletosSearch(
                                                    SMKopsimatosIDTemp,
                                                    SkeletosID,
                                                    EnothtaIDTemp,
                                                    SyntakthsIDTemp,
                                                    TautothtaIDTemp)),
                                      );
                                    },
                                  )
                                ],
                              );
                            },
                          );
                        },
                        icon: Icon(Icons.remove_red_eye),
                        label: Text("???????????????? ????????????????"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15), // <-- Radius
                        ),
                        extendedPadding: EdgeInsets.all(10),
                      ),
                      Container(
                        child: FloatingActionButton.extended(
                          //???????????????? ????????????????
                          onPressed: () async {
                            if (conn.isClosed) {
                              await conn.open();
                            }

                            showDialog(
                              context: context,
                              barrierDismissible:
                                  false, // user must tap button!
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  backgroundColor: Colors.greenAccent[400],
                                  title: const Text(
                                    '???????????????? ???????? ???????????????? ???? ???????? ???? ????;',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  content: SingleChildScrollView(),
                                  actions: <Widget>[
                                    TextButton(
                                      child: const Text(
                                        '??????',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      onPressed: () async {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    TextButton(
                                      child: const Text('??????',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20)),
                                      onPressed: () async {
                                        var id = item.header;

                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  Skeletos(id),
                                            ));
                                      },
                                    )
                                  ],
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.add),
                          label: Text("???????????????? ????????????????"),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(15), // <-- Radius
                          ),
                          extendedPadding: EdgeInsets.all(10),
                        ),
                        padding: EdgeInsets.all(5),
                      ),
                      ListTile(
                          title: Text(
                        item.body,
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      )),
                      ListTile(
                          title: Text(
                        item.body2,
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      )),
                      ListTile(
                          title: Text(
                        item.body3,
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      )),
                      ListTile(
                          title: Text(
                        item.body4,
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      )),
                      FloatingActionButton.extended(
                        onPressed: () async {
                          if (conn.isClosed) {
                            await conn.open();
                          }
                          arr2_2[0] = (await conn.query(
                                  "Select ???? from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[1] = (await conn.query(
                                  "Select ?????????????????? from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[2] = (await conn.query(
                                  "Select ???????? from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[3] = (await conn.query(
                                  "Select \"???????? ??\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[4] = (await conn.query(
                                  "Select \"?????????? ??\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[5] = (await conn.query(
                                  "Select ?? from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[6] = (await conn.query(
                                  "Select ?? from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[7] = (await conn.query(
                                  "Select ?? from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[8] = (await conn.query(
                                  "Select ?? from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[9] = (await conn.query(
                                  "Select \"???????????????????? ????\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[10] = (await conn.query(
                                  "Select \"???????????????? ????\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[11] = (await conn.query(
                                  "Select ???????? from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[12] = (await conn.query(
                                  "Select ???????? from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[13] = (await conn.query(
                                  "Select ?????????? from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[14] = (await conn.query(
                                  "Select ???????????? from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[15] = (await conn.query(
                                  "Select ???????? from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[16] = (await conn.query(
                                  "Select ?????????????? from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[17] = (await conn.query(
                                  "Select ?????????? from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[18] = (await conn.query(
                                  "Select ?????????? from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[19] = (await conn.query(
                                  "Select \"?????????????? ??????????????????\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[20] = (await conn.query(
                                  "Select \"??????????. ?????? ??????????\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[21] = (await conn.query(
                                  "Select \"????????????????/????????????????\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[22] = (await conn.query(
                                  "Select \"????????????. ???? ????. ???? ????\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[23] = (await conn.query(
                                  "Select \"?????????????? ???? ????\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[24] = (await conn.query(
                                  "Select \"?????????????? ??????????????\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[25] = (await conn.query(
                                  "Select \"?????????????????????? ??????????????\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[26] = (await conn.query(
                                  "Select \"???????????????? ??????????????????\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[27] = (await conn.query(
                                  "Select \"????????????????????\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[28] = (await conn.query(
                                  "Select \"??????????????????\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          arr2_2[29] = (await conn.query(
                                  "Select \"????????????????????\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");

                          dropdownArr[0] = (await conn.query(
                                  "Select ??????????????id from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          // print(dropdownArr[0]);
                          dropdownArr[1] = (await conn.query(
                                  "Select \"?????????? ????????id\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          dropdownArr[2] = (await conn.query(
                                  "Select \"??????????????????/??????????id\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          dropdownArr[3] = (await conn.query(
                                  "Select \"????????/??????id\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          dropdownArr[4] = (await conn.query(
                                  "Select \"??????????id\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");


                          idSynthetic = await conn.query("SELECT id FROM \"?????????????????? ??????????\"");


                          tmpdropdownArr[0] = (await conn.query(
                                "Select \"?????????????????? ??????????id\" from ???? where id = ${item.header};"))  
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                            

                          for (int i = 0 ; i<idSynthetic!.length ; i++)
                          {
                            if (idSynthetic![i].toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "") == tmpdropdownArr[0])
                            {
                              dropdownArr[5] = i.toString();
                            }
                          }
                         

                          dropdownArr[6] = (await conn.query(
                                  "Select \"??????????????????(??????????)id\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");


                          idCoating_color = await conn.query("SELECT id FROM \"?????????????????? (??????????)\"");

                          tmpdropdownArr[1] = (await conn.query(
                                "Select \"?????????????????? (??????????)id\" from ???? where id = ${item.header};"))  
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");

                          for (int i = 0 ; i<idCoating_color!.length ; i++)
                          {
                            if (idCoating_color![i].toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "") == tmpdropdownArr[1])
                            {
                              dropdownArr[7] = i.toString();
                            }
                          }
                          
                          Synthetic = await conn.query("SELECT selections FROM \"?????????????????? ??????????\"");  //to update the items stored when adding a new value in main form
                          Coating_color = await conn.query("SELECT selections FROM \"?????????????????? (??????????)\""); //to update the items stored when adding a new value in main form

                          dropdownArr[8] = (await conn.query(
                                  "Select \"????????????id\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          dropdownArr[9] = (await conn.query(
                                  "Select \"????????id\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          dropdownArr[10] = (await conn.query(
                                  "Select \"?????????????????????? ??????id\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          dropdownArr[11] = (await conn.query(
                                  "Select \"?????????????????????? ??????????id\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          dropdownArr[12] = (await conn.query(
                                  "Select \"????????????????id\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          dropdownArr[13] = (await conn.query(
                                  "Select \"???????????????????? ??????????????????id\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                           dropdownArr[14] = (await conn.query(
                                  "Select \"???????????????? ??????????id\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                            
                          print(dropdownArr[5]);

                          checkboxValues[0] = (await conn.query(
                                  "Select \"??????????id\" from \"???????? ??????????\" where ????id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          checkboxIDs[0] =
                              (await conn.query("Select id from ?????????? ;"))
                                  .toString()
                                  .replaceAll("[", "")
                                  .replaceAll("]", "")
                                  .replaceAll("null", "");
                          checkboxValues[1] = (await conn.query(
                                  "Select \"????????????????????id\" from \"???????? ????????????????????\" where ????id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          checkboxIDs[1] =
                              (await conn.query("Select id from ???????????????????? ;"))
                                  .toString()
                                  .replaceAll("[", "")
                                  .replaceAll("]", "")
                                  .replaceAll("null", "");
                          checkboxValues[2] = (await conn.query(
                                  "Select \"????????????????????id\" from \"???????? ????????????????????\" where ????id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          checkboxIDs[2] =
                              (await conn.query("Select id from ???????????????????? ;"))
                                  .toString()
                                  .replaceAll("[", "")
                                  .replaceAll("]", "")
                                  .replaceAll("null", "");
                          checkboxValues[3] = (await conn.query(
                                  "Select \"??????????id\" from \"???????? ??????????\" where ????id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          checkboxIDs[3] =
                              (await conn.query("Select id from ?????????? ;"))
                                  .toString()
                                  .replaceAll("[", "")
                                  .replaceAll("]", "")
                                  .replaceAll("null", "");
                          checkboxValues[4] = (await conn.query(
                                  "Select \"??????????????. ??????????????id\" from \"???????? ??????????????. ??????????????\" where ????id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          checkboxIDs[4] = (await conn.query(
                                  "Select id from \"??????????????. ??????????????\" ;"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");

                          checkbox1val = checkboxValues[0].split(
                              ","); //something like [1,2,5], selected values(only id)
                          checkbox1id = checkboxIDs[0].split(
                              ","); // all available ids, like [1,2,3,4,5,6]

                          checkbox2val = checkboxValues[1].split(",");
                          checkbox2id = checkboxIDs[1].split(",");
                          checkbox3val = checkboxValues[2].split(",");
                          checkbox3id = checkboxIDs[2].split(",");
                          checkbox4val = checkboxValues[3].split(",");
                          checkbox4id = checkboxIDs[3].split(",");
                          checkbox5val = checkboxValues[4].split(",");
                          checkbox5id = checkboxIDs[4].split(",");
                          // print(checkbox1val);
                          // print(checkbox1id);
                          items1.clear();
                          for (int i = 0; i < material!.length; i++) {
                            String value = material![i].toString();
                            items1.add(
                              value
                                  .replaceAll('[', '')
                                  .replaceAll(']', '')
                                  .replaceAll('  ', ''),
                            );
                          }

                          for (int i = 0; i < checkbox1id.length; i++) {
                            bool flag = false;
                            for (int j = 0; j < checkbox1val.length; j++) {
                              if (checkbox1id[i]
                                      .toString()
                                      .replaceAll(" ", "")
                                      .replaceAll("[", "")
                                      .replaceAll("]", "") ==
                                  checkbox1val[j]
                                      .toString()
                                      .replaceAll(" ", "")
                                      .replaceAll("[", "")
                                      .replaceAll("]", "")) {
                                flag = true;
                              }
                            }

                            if (flag == true) {
                              CheckB1[items1.elementAt(i)] = true;
                            } else {
                              CheckB1[items1.elementAt(i)] = false;
                            }
                          }
                          //------------------------------------------ end of checkbox1
                          items2.clear();
                          for (int i = 0; i < prosm!.length; i++) {
                            String value2 = prosm![i].toString();
                            items2.add(
                              value2
                                  .replaceAll('[', '')
                                  .replaceAll(']', '')
                                  .replaceAll('  ', ''),
                            );
                          }

                          for (int i = 0; i < checkbox2id.length; i++) {
                            bool flag2 = false;
                            for (int j = 0; j < checkbox2val.length; j++) {
                              if (checkbox2id[i]
                                      .toString()
                                      .replaceAll(" ", "")
                                      .replaceAll("[", "")
                                      .replaceAll("]", "") ==
                                  checkbox2val[j]
                                      .toString()
                                      .replaceAll(" ", "")
                                      .replaceAll("[", "")
                                      .replaceAll("]", "")) {
                                flag2 = true;
                              }
                            }

                            if (flag2 == true) {
                              CheckB2[items2.elementAt(i)] = true;
                            } else {
                              CheckB2[items2.elementAt(i)] = false;
                            }
                          }

                          //------------------------------------------ end of checkbox2
                          items3.clear();
                          for (int i = 0; i < toixop!.length; i++) {
                            String value2 = toixop![i].toString();
                            items3.add(
                              value2
                                  .replaceAll('[', '')
                                  .replaceAll(']', '')
                                  .replaceAll('  ', ''),
                            );
                          }

                          for (int i = 0; i < checkbox3id.length; i++) {
                            bool flag2 = false;
                            for (int j = 0; j < checkbox3val.length; j++) {
                              if (checkbox3id[i]
                                      .toString()
                                      .replaceAll(" ", "")
                                      .replaceAll("[", "")
                                      .replaceAll("]", "") ==
                                  checkbox3val[j]
                                      .toString()
                                      .replaceAll(" ", "")
                                      .replaceAll("[", "")
                                      .replaceAll("]", "")) {
                                flag2 = true;
                              }
                            }

                            if (flag2 == true) {
                              CheckB3[items3.elementAt(i)] = true;
                            } else {
                              CheckB3[items3.elementAt(i)] = false;
                            }
                          }
                          //------------------------------------------ end of checkbox3

                          items4.clear();
                          for (int i = 0; i < basei!.length; i++) {
                            String value2 = basei![i].toString();
                            items4.add(
                              value2
                                  .replaceAll('[', '')
                                  .replaceAll(']', '')
                                  .replaceAll('  ', ''),
                            );
                          }

                          for (int i = 0; i < checkbox4id.length; i++) {
                            bool flag2 = false;
                            for (int j = 0; j < checkbox4val.length; j++) {
                              if (checkbox4id[i]
                                      .toString()
                                      .replaceAll(" ", "")
                                      .replaceAll("[", "")
                                      .replaceAll("]", "") ==
                                  checkbox4val[j]
                                      .toString()
                                      .replaceAll(" ", "")
                                      .replaceAll("[", "")
                                      .replaceAll("]", "")) {
                                flag2 = true;
                              }
                            }

                            if (flag2 == true) {
                              CheckB4[items4.elementAt(i)] = true;
                            } else {
                              CheckB4[items4.elementAt(i)] = false;
                            }
                          }

                          //------------------------------------------ end of checkbox4

                          items5.clear();
                          for (int i = 0; i < anask!.length; i++) {
                            String value2 = anask![i].toString();
                            items5.add(
                              value2
                                  .replaceAll('[', '')
                                  .replaceAll(']', '')
                                  .replaceAll('  ', ''),
                            );
                          }

                          for (int i = 0; i < checkbox5id.length; i++) {
                            bool flag2 = false;
                            for (int j = 0; j < checkbox5val.length; j++) {
                              if (checkbox5id[i]
                                      .toString()
                                      .replaceAll(" ", "")
                                      .replaceAll("[", "")
                                      .replaceAll("]", "") ==
                                  checkbox5val[j]
                                      .toString()
                                      .replaceAll(" ", "")
                                      .replaceAll("[", "")
                                      .replaceAll("]", "")) {
                                flag2 = true;
                              }
                            }

                            if (flag2 == true) {
                              CheckB5[items5.elementAt(i)] = true;
                            } else {
                              CheckB5[items5.elementAt(i)] = false;
                            }
                          }

                          //------------------------------------------ end of checkbox5
                          checkboxValues[5] = (await conn.query(
                                  "Select ?????????????? from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");

                          checkboxValues[6] = (await conn.query(
                                  "Select ?????????????????????? from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");

                          kosk = checkboxValues[5].toLowerCase() == 'true';
                          ner = checkboxValues[6].toLowerCase() == 'true';

                          // print(CheckB1);
                          // print(CheckB2);
                          // print(CheckB3);
                          // print(CheckB4);
                          // print(CheckB5);


                          // ---------------------------------------- end of checkboxes
                          radiobuttonsOptions[0] = (await conn.query(
                                  "Select \"?????????? ??????????????\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          radiobuttonsOptions[1] = (await conn.query(
                                  "Select \"?????????????? ??????????????\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                           radiobuttonsOptions[2] = (await conn.query(
                                  "Select \"?????????????????????????????? ????????????????\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          radiobuttonsOptions[3] = (await conn.query(
                                  "Select \"spolia\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                          radiobuttonsOptions[4] = (await conn.query(
                                  "Select \"????????\" from ???? where id = ${item.header};"))
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")
                              .replaceAll("null", "");
                            
                          



                          String date2 = arr2_2[29];
                          if (date2.length > 9) {
                            arr2_2[29] = arr2_2[29].substring(
                                0,
                                date2.length -
                                    14); //we remove the timezone from the date
                          }
                          showDialog(
                            context: context,
                            barrierDismissible: false, // user must tap button!
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.greenAccent[400],
                                title: const Text(
                                  '???????????????????? ???? ???????????????????????????? ???????? ???? ????;',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400),
                                ),
                                content: SingleChildScrollView(),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text(
                                      '??????',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    onPressed: () async {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    child: const Text('??????',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20)),
                                    onPressed: () async {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  EditSM(item.header)));
                                      //print(item.header);
                                    },
                                  )
                                ],
                              );
                            },
                          );
                        },
                        icon: Icon(Icons.edit),
                        label: Text("??????????????????????"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15), // <-- Radius
                        ),
                        extendedPadding: EdgeInsets.all(10),
                        backgroundColor: Colors.green[500],
                        foregroundColor: Colors.white,
                      ),
                      Container(
                        child: FloatingActionButton.extended(
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
                                    '???????????????????? ???? ???????????????????? ???????? ???? ???? ?????? ?????????? ???????? ?????????????????? ??????;',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  content: SingleChildScrollView(),
                                  actions: <Widget>[
                                    TextButton(
                                      child: const Text(
                                        '??????',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      onPressed: () async {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    TextButton(
                                      child: const Text('??????',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20)),
                                      onPressed: () async {
                                        var id = int.parse(item.header);

                                        if (conn.isClosed) {
                                          await conn.open();
                                        }
                                        SkeletoiIDs = await conn.query(
                                            "SELECT ????????????????id FROM \"???????? ??????????????\" WHERE ????id=$id");

                                        await conn.query(
                                            "DELETE FROM \"???????? ??????????????\" WHERE ????id=$id"); //deleting the relations ????-????????????????
                                        await conn.query(
                                            "DELETE FROM \"???????? ??????????\" WHERE ????id=$id"); //deleting the relations ????-1st checkbox
                                        await conn.query(
                                            "DELETE FROM \"???????? ??????????????. ??????????????\" WHERE ????id=$id");
                                        await conn.query(
                                            "DELETE FROM \"???????? ??????????\" WHERE ????id=$id");
                                        await conn.query(
                                            "DELETE FROM \"???????? ????????????????????\" WHERE ????id=$id");
                                        await conn.query(
                                            "DELETE FROM \"???????? ????????????????????\" WHERE ????id=$id");

                                        for (int i = 0;
                                            i < SkeletoiIDs!.length;
                                            i++) {
                                          print(SkeletoiIDs![i]
                                              .toString()
                                              .replaceAll("[", "")
                                              .replaceAll("]", "")
                                              .trim());
                                          await conn.query(
                                              "DELETE FROM ???????????????? WHERE id=${SkeletoiIDs![i].toString().replaceAll("[", "").replaceAll("]", "").trim()}"); //deleting the ????'s ????????????????
                                        }

                                        await conn.query(
                                            "DELETE FROM ???? WHERE id=$id;"); //deleting the ????

                                        Navigator.of(context)
                                            .pop(); //close the dialog window
                                        Navigator.of(context)
                                            .pop(); //close the search page
                                        Navigator.of(context)
                                            .pop(); //close the dialog window of the search function
                                      },
                                    )
                                  ],
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.delete),
                          label: Text("????????????????"),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(15), // <-- Radius
                          ),
                          backgroundColor: Color.fromARGB(255, 243, 70, 58),
                          foregroundColor: Colors.white,
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
