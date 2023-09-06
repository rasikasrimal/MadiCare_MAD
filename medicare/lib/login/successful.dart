import 'package:flutter/material.dart';
import 'package:medicare/constants/colors.dart';
import 'package:medicare/text_buttons/main_text_button.dart'; // Import your custom MainTextButton
import 'package:medicare/login/intro_home.dart'; // Import your Home page
import 'package:medicare/welcome/welcome.dart';

class RegistrationSuccessfulPage extends StatelessWidget {
  const RegistrationSuccessfulPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Successful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.check_circle,
              color: mainColor,
              size: 100,
            ),
            const SizedBox(height: 20),
            const Text(
              'Registration Successful!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'You have successfully created an account.',
              style: TextStyle(
                fontSize: 20, // Adjust the font size as needed
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Container(
              // Wrap both the text and button in a container
              width: 250, // Set the width to match the desired width
              child: MainTextButton(
                // Use your custom MainTextButton
                text: 'Back to Home',
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                    (route) => false,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
