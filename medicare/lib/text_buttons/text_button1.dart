import 'package:flutter/material.dart';

class TextButton1 extends StatelessWidget {
  final String text;
  const TextButton1({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
      ),
      onPressed: null,
      child: Text(text),
    );
  }
}
