import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  var text;
  var value;

  TextWidget(text,value) {
    this.text = text;
    this.value = value;
  }

  @override
  Widget build(BuildContext context) {
    
    
    if(value == 0)
    {
        return Container(
        //container xrhsimo widget
        width: double.infinity, //center
        padding: EdgeInsets.all(10),
        child: Text(
          text,
           style: TextStyle(fontSize: 27,color: Colors.greenAccent[400], fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ));
    }
    else if(value == 1)
    {
      return Container(
        //container xrhsimo widget
        width: double.infinity, //center
        padding: EdgeInsets.all(10),
        child: Text(
          text,
           style: TextStyle(fontSize: 22,color: Colors.blue, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ));
    }
    else
    {
        return Container(
        //container xrhsimo widget
        width: double.infinity, //center
        padding: EdgeInsets.all(2),
        child: Text(
          text,
           style: TextStyle(fontSize: 15,color: Colors.indigo[900], fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ));

    }
    
  
  }
}
