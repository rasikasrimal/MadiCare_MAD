import 'package:flutter/material.dart';

class CheckUpPage extends StatefulWidget {
  @override
  _SelfCheckupState createState() => _SelfCheckupState();
}

class _SelfCheckupState extends State<CheckUpPage> {
  double? height;
  double? weight;
  double? bmi;

  void calculateBMI() {
    if (height != null && weight != null && height! > 0 && weight! > 0) {
      final double heightMeters = height! / 100;
      final double bmiValue = weight! / (heightMeters * heightMeters);
      setState(() {
        bmi = bmiValue;
      });
    } else {
      setState(() {
        bmi = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Self Checkup'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter Your Height (in cm):',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  height = double.tryParse(value);
                });
              },
            ),
            SizedBox(height: 16),
            Text(
              'Enter Your Weight (in kg):',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  weight = double.tryParse(value);
                });
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: calculateBMI,
              child: Text('Calculate BMI'),
            ),
            SizedBox(height: 16),
            if (bmi != null)
              Text(
                'Your BMI: ${bmi?.toStringAsFixed(2)}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}
