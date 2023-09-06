import 'package:flutter/material.dart';
import 'package:medicare/constants/colors.dart';
import 'package:medicare/login/signup_page.dart';
import 'package:medicare/profile/mainapp.dart';
import 'package:medicare/text_buttons/main_text_button.dart';
import 'package:medicare/login/login_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/intro_home.png'),
              const Text(
                'Do you want medical help?',
                style: TextStyle(
                  color: blue,
                  fontFamily: 'Helvetica',
                  fontSize: 24.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MainTextButton(
                    text: 'Login',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                  ),
                  const SizedBox(width: 20),
                  MainTextButton(
                    text: 'Sign Up',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage()),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              MainTextButton(
                  text: 'Profile - Azam',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MainApp()), //here is it correct
                    );
                  }),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
