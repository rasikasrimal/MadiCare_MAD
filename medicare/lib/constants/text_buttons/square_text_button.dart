import 'package:flutter/material.dart';

class SquareTextButton extends StatelessWidget {
  final Icon icon;
  final String text;
  final Color boxColor;

  const SquareTextButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.boxColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      onPressed: () {},
      child: Container(
        width: 100,
        height: 100,
        padding: EdgeInsets.all(16.0),
        color: boxColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Adjust spacing
          crossAxisAlignment: CrossAxisAlignment.center, // Center text
          children: [
            icon,
            Text(
              text,
              style: const TextStyle(
                fontSize: 18, // Increase text size
                color: Colors.white,
                fontWeight: FontWeight.bold, // Make text bold
              ),
              textAlign: TextAlign.center, // Center-align the text
            ),
          ],
        ),
      ),
    );
  }
}
