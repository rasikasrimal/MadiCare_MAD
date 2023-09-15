import 'package:flutter/material.dart';
import 'package:medicare/constants/appbar.dart';
import 'package:medicare/constants/text_buttons/main_text_button_2.dart';
import 'package:medicare/consult/Find_Doc_page.dart';
import 'package:medicare/consult/top_rated_doctors.dart';

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
            MainTextButton2(
              text: 'Find a Doctor',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FindDoctorPage()),
                );
              },
            ),
            const SizedBox(height: 20),
            MainTextButton2(
              text: 'Top Rated Doctors',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TopRatedDoctors()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
