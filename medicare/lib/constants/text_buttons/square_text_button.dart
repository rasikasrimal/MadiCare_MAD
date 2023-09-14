import 'package:flutter/material.dart';

class SquareTextButton extends StatelessWidget {
  final Icon icon;
  final String text;
  final Color boxColor;
  final Color iconColor;
  final double borderRadius;

  const SquareTextButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.boxColor,
    required this.iconColor,
    this.borderRadius = 10.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      onPressed: () {},
      child: Container(
        width: 130,
        height: 130,
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius:
              BorderRadius.circular(borderRadius), // Set the border radius here
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon.icon,
              color: iconColor,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
