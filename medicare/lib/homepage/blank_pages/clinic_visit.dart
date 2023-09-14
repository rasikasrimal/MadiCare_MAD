import 'package:flutter/material.dart';
import 'package:medicare/constants/appbar.dart';

class ClinicVisit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Clinic Visit'),
      body: const Center(
        child: Text('This is a blank page.'),
      ),
    );
  }
}
