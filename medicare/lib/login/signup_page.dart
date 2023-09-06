import 'package:flutter/material.dart';
import 'package:medicare/constants/colors.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Container(
        width: double.infinity, // Fill the entire width
        color: mainColor, // Set the background color
        child: Padding(
          padding: const EdgeInsets.all(20), // Padding for the text
          child: Text(
            'Registration',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Helvetica',
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
