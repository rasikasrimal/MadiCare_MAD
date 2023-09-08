import 'package:flutter/material.dart';
import 'package:medicare/constants/colors.dart';
import 'package:medicare/text_buttons/username_pass.dart';
import 'package:medicare/constants/appbar.dart';
import 'package:medicare/login/RecoveryPages/recovery_page_couldnt_you_sign_in.dart';

class PasswordRecoveryPageTAW extends StatelessWidget {
  const PasswordRecoveryPageTAW({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Account Recovery'),
      backgroundColor: Colors.white,
//
//
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
                'To help keep your account safe, We wants to make sure it’s really you trying to sign in',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Confirm the phone number you provided in your security settings',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 20),
              const UsernamePasswordInput(
                hintText: 'Phone Number',
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
//
//
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PasswordRecoveryPageCSI(),
                        ),
                      );
                    },
//
//
                    child: const Text(
                      'Try Another Way',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Helvetica',
                        color: mainColor,
                      ),
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
//
//
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PasswordRecoveryPageTAW(),
                        ),
                      );
                    },
//
//
                    style: ElevatedButton.styleFrom(
                        backgroundColor: mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100))),
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Helvetica',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
