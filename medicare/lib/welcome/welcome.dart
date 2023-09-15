import 'package:flutter/material.dart';
import 'package:medicare/constants/appbar.dart';
import 'package:medicare/constants/colors.dart';
import 'package:medicare/constants/text_buttons/main_text_button_2.dart';
import 'package:medicare/consult/consult.dart';
import 'package:medicare/appointment/AppointmentPage.dart';
import 'package:medicare/emergency/emergency.dart';
import 'package:medicare/medical_approval/medical_page.dart';
import 'package:medicare/medicine_shop/shop.dart';
import 'package:medicare/self_checkup/self_checkup.dart';

class _WelcomePageState extends State<WelcomePage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Welcome'),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          const SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'helvetica',
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Welcome !\n",
                      style: TextStyle(fontSize: 30, fontFamily: 'helvetica'),
                    ),
                    TextSpan(
                      text: "student_name",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'helvetica',
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
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
          const SizedBox(height: 10),
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
          const SizedBox(height: 10),
          MainTextButton2(
            text: 'Medicine Shop',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Shop()),
              );
            },
          ),
          const SizedBox(height: 10),
          MainTextButton2(
            text: 'Emergency',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Emergency()),
              );
            },
          ),
          const SizedBox(height: 10),
          MainTextButton2(
            text: 'Medical Approval',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MedicalPage()),
              );
            },
          ),
          const SizedBox(height: 10),
          MainTextButton2(
            text: 'Appointment',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CalendarPage()),
              );
            },
          ),
          const SizedBox(height: 10),
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
      // Include the bottom navigation bar here
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            if (index == 0) {
              // Navigate to WelcomePage when the Home icon is pressed
              currentPage = 0;
            } else {
              // Navigate to the corresponding page for other icons
              currentPage = index;
            }
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: currentPage == 0
                ? const Icon(Icons.home, color: mainColor)
                : const Icon(Icons.home, color: Colors.black),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: currentPage == 1
                ? const Icon(
                    Icons.person,
                    color: mainColor,
                  )
                : const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: currentPage == 2
                ? const Icon(Icons.chat, color: mainColor)
                : const Icon(Icons.chat, color: Colors.black),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: currentPage == 3
                ? const Icon(Icons.calendar_month, color: mainColor)
                : const Icon(Icons.calendar_month, color: Colors.black),
            label: "Calendar",
          ),
          BottomNavigationBarItem(
            icon: currentPage == 4
                ? const Icon(Icons.view_list, color: mainColor)
                : const Icon(Icons.view_list, color: Colors.black),
            label: "List",
          ),
        ],
      ),
    );
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key});

  @override
  _WelcomePageState createState() => _WelcomePageState();
}
