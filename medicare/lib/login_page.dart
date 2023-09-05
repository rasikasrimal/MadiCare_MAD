import 'package:flutter/material.dart';
import 'recovery_page.dart';
import 'signup_page.dart';

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'), // Add an app bar with a title
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
              ),
              SizedBox(height: 16),
              TextField(
                obscureText: true, // Passwords are hidden
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Add your login logic here
                },
                child: Text('Login'),
              ),
              TextButton(
                onPressed: () {
                  // Navigate to password recovery page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PasswordRecoveryPage()),
                  );
                },
                child: Text('Forgot Password?'),
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  // Navigate to sign-up page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                child: Text("Don't have an account? Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
