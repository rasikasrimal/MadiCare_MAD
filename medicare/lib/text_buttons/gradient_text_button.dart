import 'package:flutter/material.dart';

class GradientTextButton extends StatelessWidget {
  const GradientTextButton({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(16.0),
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
