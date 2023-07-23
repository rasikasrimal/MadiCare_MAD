import 'package:flutter/material.dart';
import 'package:medicare/constants/colors.dart';
import 'package:medicare/text_buttons/main_text_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/intro_home.png'),
              const Text('Do you want medical help?',
                  style: TextStyle(
                      color: blue,
                      fontFamily: 'Helvetica',
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400)),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MainTextButton(text: 'Login'),
                  SizedBox(width: 20),
                  MainTextButton(text: 'Sign Up'),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    ));
  }
}
