import 'package:flutter/material.dart';
import 'package:medicare/constants/appbar.dart';

class TopRatedDoctors extends StatelessWidget {
  const TopRatedDoctors({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Top Rated Doctors'),
      backgroundColor: Colors.white,
//
//
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Top Rated Doctors',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
