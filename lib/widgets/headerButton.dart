import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget headerbutton({
  required String buttonText,
  required IconData buttonIcon,
  final buttonAction,
  required Color buttoncolor,
}) {
  return FlatButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttoncolor,
      ),
      label: Text(buttonText));}