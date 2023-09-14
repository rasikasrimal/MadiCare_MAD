import 'package:flutter/material.dart';
import 'package:medicare/appointment/AppointmentSuccess.dart';
import 'package:medicare/constants/appbar.dart';
import 'package:medicare/constants/colors.dart';
import 'package:medicare/constants/text_buttons/main_text_button.dart';
import 'package:medicare/appointment/DatePicker.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  final DateTime _selectedDate = DateTime.now();
  String _selectedTime = '09:30 AM';
  String _selectedDoctor = 'John';
  bool _isUpcoming = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Make Appointment'),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
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
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: mainColor,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _isUpcoming = true;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: _isUpcoming ? mainColor : Colors.white,
                            onPrimary: _isUpcoming ? Colors.white : mainColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
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
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _isUpcoming = false;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: !_isUpcoming ? mainColor : Colors.white,
                            onPrimary: !_isUpcoming ? Colors.white : mainColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
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
              const SizedBox(height: 16),
              DateTimeWidget(),
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
                  setState(() {});
                },
                decoration: const InputDecoration(
                  labelText: 'Purpose',
                ),
              ),
              const SizedBox(height: 24),
              MainTextButton(
                text: 'Make Appointment',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          AppointmentPage(selectedDate: _selectedDate),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
