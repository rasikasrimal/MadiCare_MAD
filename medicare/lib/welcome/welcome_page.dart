import 'package:flutter/material.dart';
import 'package:medicare/constants/colors.dart';
import 'package:medicare/constants/appbar.dart';
import 'package:medicare/appointment/AppointmentPage.dart';
import 'package:medicare/consult/consult.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        // '/consult': (context) => ConsultPage(),
        '/medicineShop': (context) => MedicineShopPage(),
        '/emergency': (context) => EmergencyPage(),
        '/medicalApproval': (context) => MedicalApprovalPage(),
        // '/appointment': (context) => AppointmentPage(),
        '/selfCheckup': (context) => SelfCheckupPage(),
      },
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: mainColor, // Purple background color for buttons
            padding: EdgeInsets.symmetric(
              horizontal: 20.0, // Horizontal spacing between buttons
              vertical: 20.0, // Vertical spacing between buttons
            ),
          ),
        ),
      ),
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Welcome Page'),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue, // Blue background color for "Service" text
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Text(
                'Service',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // White font color
                ),
              ),
            ),
            SizedBox(height: 20), // Additional spacing
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DoctorConsultationApp(),
                  ),
                );
              },
              child: Text(
                'Consult',
                style: TextStyle(
                    fontSize: 24, color: Colors.white), // White font color
              ),
            ),
            SizedBox(height: 20), // Additional spacing
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/medicineShop');
              },
              child: Text(
                'Medicine Shop',
                style: TextStyle(
                    fontSize: 24, color: Colors.white), // White font color
              ),
            ),
            SizedBox(height: 20), // Additional spacing
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/emergency');
              },
              child: Text(
                'Emergency',
                style: TextStyle(
                    fontSize: 24, color: Colors.white), // White font color
              ),
            ),
            SizedBox(height: 20), // Additional spacing
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/medicalApproval');
              },
              child: Text(
                'Medical Approval',
                style: TextStyle(
                    fontSize: 24, color: Colors.white), // White font color
              ),
            ),
            SizedBox(height: 20), // Additional spacing
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CalendarPage(),
                  ),
                );
              },
              child: Text(
                'Appointment',
                style: TextStyle(
                    fontSize: 24, color: Colors.white), // White font color
              ),
            ),
            SizedBox(height: 20), // Additional spacing
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/selfCheckup');
              },
              child: Text(
                'Self Checkup',
                style: TextStyle(
                    fontSize: 24, color: Colors.white), // White font color
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MedicineShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine Shop Page'),
      ),
      body: Center(
        child: Text('This is the Medicine Shop Page content.'),
      ),
    );
  }
}

class EmergencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Page'),
      ),
      body: Center(
        child: Text('This is the Emergency Page content.'),
      ),
    );
  }
}

class MedicalApprovalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical Approval Page'),
      ),
      body: Center(
        child: Text('This is the Medical Approval Page content.'),
      ),
    );
  }
}

class SelfCheckupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Self Checkup Page'),
      ),
      body: Center(
        child: Text('This is the Self Checkup Page content.'),
      ),
    );
  }
}
