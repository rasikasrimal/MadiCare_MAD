import 'package:flutter/material.dart';
import 'package:medicare/constants/colors.dart';

class SquareTextButton extends StatelessWidget {
  final IconData iconData;
  final String text;

  SquareTextButton(this.iconData, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 140.0,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              iconData,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
