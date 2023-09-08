import 'package:flutter/material.dart';
import 'package:medicare/appointment/Appointment.dart';
import 'package:medicare/constants/appbar.dart';

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
//
      appBar: MyAppBar('Make Appointment'),
      backgroundColor: Colors.white,
//
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text('Select appointment date'),
            const SizedBox(height: 16),
            Row(
              children: <Widget>[
                const Text('Upcoming'),
                Switch(
                  value: _isUpcoming,
                  onChanged: (value) {
                    setState(() {
                      _isUpcoming = value;
                    });
                  },
                ),
                const Text('Past'),
              ],
            ),
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
                DateTime selectedDate = DateTime(2022, 7,
                    18); //here i gave hardcoded date time, instead get this value from date picker
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        AppointmentPage(selectedDate: selectedDate),
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
