import 'package:flutter/material.dart';
import 'package:medicare/constants/colors.dart';
import 'package:medicare/homepage/homepage.dart';
import 'package:medicare/login/signup_page.dart';
import 'package:medicare/profile/mainapp.dart';
import 'package:medicare/constants/text_buttons/main_text_button.dart';
import 'package:medicare/login/login_page.dart';
import 'package:medicare/appointment/AppointmentPage.dart';
import 'package:medicare/welcome/welcome.dart';
import 'package:medicare/consult/consult.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/intro_home.png'),
              const Text(
                'Do you want medical help?',
                style: TextStyle(
                  color: blue,
                  fontFamily: 'Helvetica',
                  fontSize: 24.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MainTextButton(
                    text: 'Login',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                  ),
                  const SizedBox(width: 20),
                  MainTextButton(
                    text: 'Sign Up',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage()),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
//
//
//
//
//
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainApp(),
                    ),
                  );
                },
                child: const Text(
                  'Profile - Azam',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
//
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CalendarPage(),
                    ),
                  );
                },
                child: const Text(
                  'Appointment - Sachin',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
//
//
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WelcomePage(),
                    ),
                  );
                },
                child: const Text(
                  'Welcome Page - Rowzy',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
//
//
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CHomePage(),
                    ),
                  );
                },
                child: const Text(
                  'Home Page - Chethana',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
//
//
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DoctorConsultationApp(),
                    ),
                  );
                },
                child: const Text(
                  'Consultant Page - Dilaxana',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
//
//
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
