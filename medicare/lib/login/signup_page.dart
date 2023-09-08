import 'package:flutter/material.dart';
import 'package:medicare/constants/colors.dart';
import 'package:medicare/constants/text_buttons/main_text_button.dart';
import 'package:medicare/constants/text_buttons/username_pass.dart';
import 'package:medicare/login/successful.dart';
import 'package:medicare/constants/appbar.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key});

  @override
  Widget build(BuildContext context) {
    const double containerPadding = 16.0; // Define the padding amount

    return Scaffold(
      appBar: MyAppBar('Sign Up'),
      backgroundColor: Colors.white,
//
//
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: mainColor,
            ),
            child: const Padding(
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
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: containerPadding), // Apply padding
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    UsernamePasswordInput(
                      hintText: 'Enter Your Full Name',
                    ),
                    SizedBox(height: 10),
                    UsernamePasswordInput(
                      hintText: 'Student Email',
                    ),
                    SizedBox(height: 10),
                    UsernamePasswordInput(
                      hintText: 'Phone Number',
                    ),
                    SizedBox(height: 10),
                    UsernamePasswordInput(
                      hintText: 'Student ID',
                    ),
                    SizedBox(height: 10),
                    UsernamePasswordInput(
                      hintText: 'Password',
                      obscureText: true,
                    ),
                    SizedBox(height: 10),
                    UsernamePasswordInput(
                      hintText: 'Re-Enter Your Password',
                      obscureText: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(containerPadding), // Apply padding
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
