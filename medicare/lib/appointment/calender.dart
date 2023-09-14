import 'package:flutter/material.dart';
import 'package:medicare/appointment/Appointment.dart';
import 'package:medicare/constants/appbar.dart';
import 'package:medicare/constants/colors.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateTime _selectedDate = DateTime.now();
  String _selectedTime = '09:30 AM';
  String _selectedDoctor = 'John';
  String _purpose = '';
  bool _isUpcoming = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Make Appointment'),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Select appointment date',
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 20.0,
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
//
//
//
            Container(
              decoration: BoxDecoration(
                color: Colors.white, // Default background color
                border: Border.all(
                  color: mainColor, // Border color is mainColor
                  width: 2.0, // Border width
                ),
                borderRadius: BorderRadius.circular(
                    100.0), // Rounded corners for the entire container
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0), // Add horizontal padding
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isUpcoming =
                                true; // Set the selection to "Upcoming"
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: _isUpcoming
                              ? mainColor
                              : Colors.white, // Highlight if selected
                          onPrimary: _isUpcoming
                              ? Colors.white
                              : mainColor, // Text color change
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                100.0), // Rounded corners for both buttons
                          ),
                        ),
                        child: const Center(
                          child: Text('Upcoming'),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0), // Add horizontal padding
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isUpcoming = false; // Set the selection to "Past"
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: !_isUpcoming
                              ? mainColor
                              : Colors.white, // Highlight if selected
                          onPrimary: !_isUpcoming
                              ? Colors.white
                              : mainColor, // Text color change
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                100.0), // Rounded corners for both buttons
                          ),
                        ),
                        child: const Center(
                          child: Text('Past'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
//
//
//

            const SizedBox(height: 16),
            Row(
              children: <Widget>[
                const Text('Choose time: '),
                DropdownButton<String>(
                  value: _selectedTime,
                  onChanged: (value) {
                    setState(() {
                      _selectedTime = value!;
                    });
                  },
                  items: <String>[
                    '09:30 AM',
                    '10:30 AM',
                    '11:00 AM',
                    '11:30 AM',
                    '12:00 PM',
                    '12:30 PM',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: <Widget>[
                const Text('Choose doctor: '),
                DropdownButton<String>(
                  value: _selectedDoctor,
                  onChanged: (value) {
                    setState(() {
                      _selectedDoctor = value!;
                    });
                  },
                  items: <String>[
                    'John',
                    'Alan',
                    'David',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextField(
              onChanged: (value) {
                setState(() {
                  _purpose = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Purpose',
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Use the selected date from a date picker
                // DateTime selectedDate = _selectedDateFromDatePicker();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        AppointmentPage(selectedDate: _selectedDate),
                  ),
                );
              },
              child: const Text('Make Appointment'),
            ),
          ],
        ),
      ),
    );
  }
}
