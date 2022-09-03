import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget iconBtn
(
{
required VoidCallback press,
required IconData icon,
  Color? color,

}
)
=>
IconButton
(
onPressed: press,
    icon: Icon(icon),
  color: color,
  iconSize: 35,
  splashColor: Colors.green,

);

