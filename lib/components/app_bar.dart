import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBar buildAppBar(BuildContext context,
    {String title, List<Widget> actions, Widget leading}) {
  return AppBar(
    backgroundColor: Colors.cyan[100],
    //brightness: Brightness.dark,
    elevation: 0,
    title: Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    ),
    centerTitle: true,
    leading: leading,
    actions: actions,
  );
}
