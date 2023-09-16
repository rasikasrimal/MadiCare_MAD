import 'package:flutter/material.dart';
import 'package:medicare/constants/appbar.dart';
import 'package:medicare/constants/colors.dart';

import '../welcome/welcome.dart';

class AppointmentPage extends StatelessWidget {
  final DateTime selectedDate;

  const AppointmentPage({Key? key, required this.selectedDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Appointment Successful'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.check_circle,
              color: mainColor,
              size: 100,
            ),
            const SizedBox(height: 20),
            const Text(
              'Appointment Successful!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
//
//
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        WelcomePage(), // Replace with your homepage widget
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16),
                primary: mainColor, // Set the button's background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Column(
                children: <Widget>[
                  const Text(
                    'Date',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    _getFormattedDate(
                        selectedDate), // Display the selected date here
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )

//
//
          ],
        ),
      ),
    );
  }

  String _getFormattedDate(DateTime date) {
    final monthNames = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    final day = date.day;
    final month = monthNames[date.month - 1];
    final year = date.year;
    final daySuffix = _getDaySuffix(day);

    return '$day$daySuffix $month $year';
  }

  String _getDaySuffix(int day) {
    if (day >= 11 && day <= 13) {
      return 'th';
    }
    switch (day % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }
}
