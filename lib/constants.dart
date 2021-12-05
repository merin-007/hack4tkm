import 'package:flutter/material.dart';

Widget giveMeText(var str, var col, var siz){
  return Text(
    str,
    style: TextStyle(
      color: Color(col),
      fontSize: siz,
      fontFamily: 'SpaceMono',
    ),
  );
}