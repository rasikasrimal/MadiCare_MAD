import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text('Doctor Consultation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Doctor Consultation!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement navigation to doctor list
              },
              child: Text('Find a Doctor'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement Top Rated Doctors
              },
              child: Text('Top Rated Doctors'),
            ),
          ],
        ),
      ),
    );
  }
}
