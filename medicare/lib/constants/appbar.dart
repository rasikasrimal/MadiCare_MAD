import 'package:flutter/material.dart';
import 'package:medicare/constants/colors.dart';

AppBar MyAppBar(String title) {
  return AppBar(
    backgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: mainColor),
    title: Text(
      title,
      style: const TextStyle(
        color: mainColor,
      ),
    ),
    automaticallyImplyLeading: true,
  );
}
