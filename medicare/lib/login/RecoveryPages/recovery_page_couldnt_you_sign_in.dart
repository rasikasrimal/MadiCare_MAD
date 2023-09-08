import 'package:flutter/material.dart';
import 'package:medicare/constants/colors.dart';
import 'package:medicare/constants/appbar.dart';
import 'package:medicare/login/intro_home.dart';
import 'package:medicare/help_center/tips.dart';

class PasswordRecoveryPageCSI extends StatelessWidget {
  const PasswordRecoveryPageCSI({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Account Recovery'),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Account Recovery',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                  color: mainColor,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'You didn’t provide enough info for Us to be sure this account is really yours. Google asks for this info to keep your account secure.',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                '\u2022 Use a device where you’ve signed in before\n'
                '\u2022 Use a familiar Wi-Fi network, such as at home or work',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TipsPage(),
                    ),
                  );
                },
                child: const Text(
                  'More tips to recover your account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Helvetica',
                    color: mainColor,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80),
                  ),
                ),
                child: const Text(
                  'Try Again',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Helvetica',
                    color: Colors.white,
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
