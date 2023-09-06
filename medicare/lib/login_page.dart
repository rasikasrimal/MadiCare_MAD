import 'package:flutter/material.dart';
import 'package:medicare/text_buttons/main_text_button.dart';
import 'recovery_page.dart';
import 'signup_page.dart';
import 'package:medicare/constants/colors.dart';
import 'package:medicare/text_buttons/username_pass.dart'; // Corrected import statement

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: const Text('Login'), // Add an app bar with a title
=======
        title: const Text('Login'),
>>>>>>> 08e5f0ae03958f56706a03f026f98bf452fda171
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
<<<<<<< HEAD
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                obscureText: true, // Passwords are hidden
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Add your login logic here
                },
                child: const Text('Login'),
=======
              const UsernamePasswordInput(
                hintText: 'Username',
              ),

              const SizedBox(height: 16),

              const UsernamePasswordInput(
                hintText: 'Password',
                obscureText: true,
>>>>>>> 08e5f0ae03958f56706a03f026f98bf452fda171
              ),

              const SizedBox(height: 24), // Spacing

              MainTextButton(text: 'Login', onPressed: () {}),

              const SizedBox(height: 16), // Spacing

              // Password recovery button
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
<<<<<<< HEAD
                        builder: (context) => const PasswordRecoveryPage()),
                  );
                },
                child: const Text('Forgot Password?'),
              ),
              const SizedBox(height: 16),
=======
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

              const SizedBox(height: 10), // Spacing

              // Don't have an account? sign up
>>>>>>> 08e5f0ae03958f56706a03f026f98bf452fda171
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
<<<<<<< HEAD
                    MaterialPageRoute(builder: (context) => const SignUpPage()),
                  );
                },
                child: const Text("Don't have an account? Sign Up"),
=======
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
>>>>>>> 08e5f0ae03958f56706a03f026f98bf452fda171
              ),
            ],
          ),
        ),
      ),
    );
  }
}
