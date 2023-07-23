import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Do you want medical help?',
              style: TextStyle(
                color: Colors.blue, // Use Colors.blue instead of blue
                fontFamily: 'Helvetica',
                fontSize: 24.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
