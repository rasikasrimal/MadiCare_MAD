import 'package:flutter/material.dart';
import 'package:medicare/constants/colors.dart';

class BlueColumnBox extends StatelessWidget {
  final String title;

  BlueColumnBox(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        width: 340.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
