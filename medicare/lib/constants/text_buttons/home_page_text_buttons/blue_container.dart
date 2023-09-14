import 'package:flutter/material.dart';
import 'package:medicare/constants/colors.dart';

class BlueContainer extends StatelessWidget {
  final String title;
  final String text;

  BlueContainer(this.title, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 130.0,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
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
