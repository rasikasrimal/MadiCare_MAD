import 'package:flutter/material.dart';
import 'package:medicare/constants/appbar.dart';
import 'package:medicare/constants/colors.dart';
import 'package:medicare/constants/text_buttons/square_text_button.dart';

class CHomePage extends StatelessWidget {
  const CHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Welcome'),
      backgroundColor: Colors.white,
      body: const Column(
        children: <Widget>[
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
//
//
              SizedBox(width: 40.0),
              SquareTextButton(
                icon: Icon(Icons.local_hospital),
                text: 'Clinic Visit',
                boxColor: mainColor,
                iconColor: Colors.white,
                borderRadius: 15.0,
              ),
              Spacer(),
              SquareTextButton(
                icon: Icon(Icons.home),
                text: 'Home Visit',
                boxColor: mainColor,
                iconColor: Colors.white,
                borderRadius: 15.0,
              ),
              SizedBox(width: 40.0),
//
//
            ],
          ),
        ],
      ),
    );
  }
}
