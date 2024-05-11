import 'package:flutter/material.dart';

Widget textInApp ({
  required String data ,
  required Color textColor ,
  double fontSize = 30 ,
  FontWeight fontWeight = FontWeight.normal,
})
{
  return Text(data,style:TextStyle(
    color: textColor,
    fontSize: fontSize,
    fontWeight: fontWeight,
  ),);
}