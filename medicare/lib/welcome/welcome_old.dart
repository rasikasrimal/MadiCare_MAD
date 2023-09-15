import 'package:flutter/material.dart';
import 'package:medicare/constants/appbar.dart';
import 'package:medicare/constants/text_buttons/main_text_button_2.dart';
import 'package:medicare/consult/consult.dart';

import '../appointment/AppointmentPage.dart';
import '../constants/colors.dart';
import '../emergency/emergency.dart';
import '../medical_approval/medical_page.dart';
import '../medicine_shop/shop.dart';
import '../self_checkup/self_checkup.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Welcome'),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: mainColor,
              ),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Services',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Helvetica',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            MainTextButton2(
              text: 'Consult',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DoctorConsultationApp()),
                );
              },
            ),
            const SizedBox(height: 20),
            MainTextButton2(
              text: 'Medicine Shop',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Shop()),
                );
              },
            ),
            const SizedBox(height: 20),
            MainTextButton2(
              text: 'Emergency',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Emergency()),
                );
              },
            ),
            const SizedBox(height: 20),
            MainTextButton2(
              text: 'Medical Approval',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MedicalPage()),
                );
              },
            ),
            const SizedBox(height: 20),
            MainTextButton2(
              text: 'Appointment',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalendarPage()),
                );
              },
            ),
            const SizedBox(height: 20),
            MainTextButton2(
              text: 'Self Checkup',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckUpPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
