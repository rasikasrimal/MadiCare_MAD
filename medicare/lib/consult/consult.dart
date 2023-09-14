import 'package:flutter/material.dart';
import 'package:medicare/constants/appbar.dart';

// void main() {
//   runApp(DoctorConsultationApp());
// }

class DoctorConsultationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor Consultation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//
//  appbar added, but can't see back button for navigation to the previous page :(
      appBar: MyAppBar('Consultation Page'),
      backgroundColor: Colors.white,
//
//
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Doctor Consultation!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement navigation to doctor list
              },
              child: const Text('Find a Doctor'),
              //for these text buttons you can use the text_button1 or 2.dart, need to do few adjustments
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement Top Rated Doctors
              },
              child: const Text('Top Rated Doctors'),
            ),
          ],
        ),
      ),
    );
  }
}
