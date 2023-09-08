import 'package:flutter/material.dart';
import 'package:medicare/constants/colors.dart';

class MainTextButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const MainTextButton({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 60,
      width: 150,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          backgroundColor: mainColor,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
