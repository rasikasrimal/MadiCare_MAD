import 'package:flutter/material.dart';
import 'package:medicare/constants/appbar.dart';

class Doctors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Popular Doctors'),
      body: const Center(
        child: Text('This is a blank page.'),
      ),
    );
  }
}
