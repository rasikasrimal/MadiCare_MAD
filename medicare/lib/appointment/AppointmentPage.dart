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
  DateTime _selectedDate = DateTime.now();
  String _selectedTime = '09:30 AM';
  String _selectedDoctor = 'John';
  bool _isUpcoming = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Make Appointment'),
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

              // Upcoming, Past
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: mainColor,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
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

              // Date Picker
              DateTimeWidget(
                onDateSelected: (selectedDate) {
                  setState(() {
                    _selectedDate = selectedDate;
                  });
                },
              ),
              const SizedBox(height: 16),

// Choose Time and Choose Doctor (drop-down menu) sections
              Container(
                height: 400, // Set your desired height here
                decoration: BoxDecoration(
                  color: mainColor, // Set the background color to mainColor
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Column(
                  children: [
                    Column(
                      children: <Widget>[
                        const Padding(
                          // Add left and top padding
                          padding: EdgeInsets.only(left: 43.0, top: 20.0),
                          child: Align(
                            // Align the "Time" text to the left
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Time',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        //
                        // Time Slots
                        //
                        Center(
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    _buildTimeSlot('09:30 AM',
                                        _selectedTime == '09:30 AM'),
                                    _buildTimeSlot('10:30 AM',
                                        _selectedTime == '10:30 AM'),
                                    _buildTimeSlot('11:00 AM',
                                        _selectedTime == '11:00 AM'),
                                  ],
                                ),
                              ),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    _buildTimeSlot('11:30 AM',
                                        _selectedTime == '11:30 AM'),
                                    _buildTimeSlot('12:00 PM',
                                        _selectedTime == '12:00 PM'),
                                    _buildTimeSlot('12:30 PM',
                                        _selectedTime == '12:30 PM'),
                                  ],
                                ),
                              ),
                              //
                              //
                              //
                            ],
                          ),
                        )
                        //
                        //
                        //
                      ],
                    ),

                    SizedBox(height: 10),
//
//
//
                    // Choose Doctor (drop-down menu)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          const SizedBox(height: 16),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 40.0,
                                    top: 8.0), // Add left and top padding
                                child: const Text(
                                  'Doctor',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Spacer(),
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
                                    child: Text(value,
                                        style: TextStyle(color: mainColor)),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //
                    //
                    //
                  ],
                ),
              ),

              // Make Appointment
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

Widget _buildTimeSlot(String time, bool isSelected) {
  return Container(
    margin: const EdgeInsets.all(8.0),
    padding: const EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      border: Border.all(
        color: isSelected
            ? Colors.yellow
            : Colors.transparent, // Border color changes for the selected slot
        width: 2.0, // Border width for all slots
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Text(
      time,
      style: TextStyle(
        color: isSelected ? Colors.yellow : Colors.white,
      ),
    ),
  );
}
