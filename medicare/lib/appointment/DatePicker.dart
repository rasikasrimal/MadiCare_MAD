import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:medicare/constants/colors.dart';

class DateTimeWidget extends StatefulWidget {
  const DateTimeWidget(
      {Key? key, required Null Function(dynamic selectedDate) onDateSelected})
      : super(key: key);

  @override
  State<DateTimeWidget> createState() => _DateTimeWidgetState();
}

class _DateTimeWidgetState extends State<DateTimeWidget> {
  DateTime dateTime = DateTime.now();
  final List<String> monthNames = [
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
    'December',
  ];

  @override
  Widget build(BuildContext context) {
    String formattedDate = _formatDate(dateTime);

    return Column(
      children: [
        CupertinoButton(
          child: Text(
            formattedDate,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: mainColor,
            ),
          ),
          onPressed: () {
            _showDatePicker(context);
          },
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    String daySuffix = _getDaySuffix(date.day);
    String monthName =
        monthNames[date.month - 1]; // Month is 0-based in DateTime

    return '${date.day}$daySuffix $monthName ${date.year}';
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

  Future<void> _showDatePicker(BuildContext context) async {
    final pickedDate = await showModalBottomSheet<DateTime>(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          height: 216,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            initialDateTime: dateTime,
            onDateTimeChanged: (pickedDateTime) {
              setState(() => dateTime = pickedDateTime);
            },
          ),
        );
      },
    );

    if (pickedDate != null && pickedDate != dateTime) {
      setState(() {
        dateTime = pickedDate;
      });
    }
  }
}
