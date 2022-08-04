import 'dart:ui';
import 'package:application/EditSMWidget.dart';
import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';
import 'SearchWidget.dart';
import 'EditSMWidget.dart';
//import 'main.dart';


class FloatButton4 extends StatefulWidget {

  int id = 0;

  FloatButton4(int id)
  {
    this.id = id;
  }

  @override
  State<StatefulWidget> createState() => _MyWidgetState();
}

final conn = PostgreSQLConnection(
    'hilon.dit.uop.gr', //host
    5432, //port
    'db3u04', //database name
    username: 'db3u04',
    password: 'FmAF7P2A');

class _MyWidgetState extends State<FloatButton4> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: FloatingActionButton.extended(
        heroTag: "btn8",
        icon: Icon(Icons.edit),
        label: Text("Επεξεργασία"),
        backgroundColor: Colors.green[500],
        foregroundColor: Colors.white,
        onPressed: () async => {
          if (conn.isClosed)
          {
            await conn.open(),
          },

          
          //Navigator.of(context).pop(),
          
          
          showDialog(
            context: context,
            barrierDismissible: false, // user must tap button!
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: Colors.greenAccent[400],
                title: const Text(
                  'Επιθυμείτε να επεξεργατείτε αυτή τη ΣΜ;',
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => EditSM()
                      //   )
                      // );
                      print(id);
                    },
                  )
                ],
              );
            },
          )

        }
      )
    );
  }
}