import 'package:flutter/material.dart';
import 'package:ux1/const.dart';

Widget buildTitleWidget(String catName, double fontSize) {
  TextStyle textStyleTitle = TextStyle(
    color: colorNavy,
    fontWeight: FontWeight.bold,
    fontSize: fontSize,
  );
  return Padding(
    padding: EdgeInsets.only(top: 10, bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Text(
            catName,
            style: textStyleTitle,
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
