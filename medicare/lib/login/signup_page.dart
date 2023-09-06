import 'package:flutter/material.dart';
import 'package:medicare/constants/colors.dart';
import 'package:medicare/text_buttons/main_text_button.dart';
import 'package:medicare/text_buttons/username_pass.dart';
import 'package:medicare/login/successful.dart'; // Import the RegistrationSuccessfulPage

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key});

  @override
  Widget build(BuildContext context) {
    const double containerPadding = 16.0; // Define the padding amount

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: mainColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
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
          const SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: containerPadding), // Apply padding
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    const UsernamePasswordInput(
                      hintText: 'Enter Your Full Name',
                    ),
                    const SizedBox(height: 10),
                    const UsernamePasswordInput(
                      hintText: 'Student Email',
                    ),
                    const SizedBox(height: 10),
                    const UsernamePasswordInput(
                      hintText: 'Phone Number',
                    ),
                    const SizedBox(height: 10),
                    const UsernamePasswordInput(
                      hintText: 'Student ID',
                    ),
                    const SizedBox(height: 10),
                    const UsernamePasswordInput(
                      hintText: 'Password',
                      obscureText: true,
                    ),
                    const SizedBox(height: 10),
                    const UsernamePasswordInput(
                      hintText: 'Re-Enter Your Password',
                      obscureText: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(containerPadding), // Apply padding
            child: Container(
              width: double.infinity, // Set the width to match "Registration"
              child: MainTextButton(
                text: 'Create Account',
                onPressed: () {
                  // Navigate to the Registration Successful page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegistrationSuccessfulPage(),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
