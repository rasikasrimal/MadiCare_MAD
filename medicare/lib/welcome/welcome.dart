import 'package:flutter/material.dart';
import 'package:medicare/constants/appbar.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Login'),
      backgroundColor: Colors.white,
//
//
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Medicare!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your button logic here
                // This can be a navigation to the home page
              },
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
