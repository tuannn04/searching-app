import 'package:flutter/material.dart';

class MainAppBar extends AppBar {
  MainAppBar({
    super.key,
    required ThemeData themeData,
    required String appBarTitle,
  }) : super(
    title: Text(
      appBarTitle,
      style: const TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontSize : 18,
        fontWeight: FontWeight.bold
      ),
    ),
    centerTitle: true,
    shape: const Border(
      bottom: BorderSide(
        color: Colors.orange,
        width: 2
      )
    )
  );
}