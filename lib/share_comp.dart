import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget Defaultbutton ({double width =double.infinity,
  Color background  =Colors.blue ,var x=Function,String text='lol' }) {

  return Container(
    width: width,
    color: background,
    child: MaterialButton(
        onPressed: x,
        child: Text('${text}',
            style: TextStyle(
              color: Colors.white,
            ))),
  );


}