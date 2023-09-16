import 'package:flutter/material.dart';
import 'package:medicare/constants/text_buttons/main_text_button.dart';
import 'package:medicare/constants/colors.dart';
import 'package:medicare/constants/text_buttons/username_pass.dart';
import 'package:medicare/login/RecoveryPages/recovery_page.dart';
import 'package:medicare/login/signup_page.dart';
import 'package:medicare/constants/appbar.dart';
import 'package:medicare/navigation_bar/navigation_bar.dart';

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Login'),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const UsernamePasswordInput(
                hintText: 'Username',
              ),

              const SizedBox(height: 16),

              const UsernamePasswordInput(
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 24), // Spacing

              MainTextButton(
                text: 'Login',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const BottomNavigationBarExampleApp(), // Navigate to WelcomePage
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PasswordRecoveryPage(),
                    ),
                  );
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpPage(),
                    ),
                  );
                },
                child: const Text(
                  "Don't have an account? Sign Up",
                  style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
