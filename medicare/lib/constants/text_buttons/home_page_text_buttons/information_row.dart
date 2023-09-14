import 'package:flutter/material.dart';
import 'package:medicare/constants/colors.dart';

class InformationRow extends StatelessWidget {
  final String text;

  const InformationRow({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(
            text,
            style: const TextStyle(
              color: mainColor,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
