import 'package:flutter/material.dart';

class RegistrationSuccessfulPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Successful'),
      ),
      body: Center(
        child: Text(
          'Congratulations! Your registration was successful.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
