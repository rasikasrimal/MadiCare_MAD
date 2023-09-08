import 'package:flutter/material.dart';

class TextButton2 extends StatelessWidget {
  final String text;
  const TextButton2({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
      ),
      onPressed: () {},
      child: Text(text),
    );
  }
}
