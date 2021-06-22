import 'package:flutter/material.dart';
import 'package:ux1/const.dart';

Widget buildCatNameWidget(String catName, double fontSize) {
  var textStyle = TextStyle(
    color: colorNavy,
    fontWeight: FontWeight.bold,
    fontSize: fontSize,
  );
  return Padding(
    padding: EdgeInsets.only(top: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Text(
            catName,
            style: textStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 30.0,
          ),
          child: Icon(
            Icons.more_horiz,
            color: colorGrey,
          ),
        ),
      ],
    ),
  );
}
