import 'package:flutter/material.dart';
import 'package:medicare/constants/appbar.dart';

class HomeVisit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Home Visit'),
      body: const Center(
        child: Text('This is a blank page.'),
      ),
    );
  }
}
