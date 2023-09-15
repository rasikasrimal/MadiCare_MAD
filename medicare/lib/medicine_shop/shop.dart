import 'package:flutter/material.dart';
import 'package:medicare/constants/appbar.dart';
import 'package:medicare/constants/colors.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Medicine Shop'),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: mainColor,
              ),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Medicine Shop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Helvetica',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
