import 'package:flutter/material.dart';
import 'package:medicare/constants/appbar.dart';
import 'package:medicare/constants/text_buttons/home_page_text_buttons/blue_column_box.dart';
import 'package:medicare/constants/text_buttons/home_page_text_buttons/square_text_button.dart';
import 'package:medicare/homepage/blank_pages/clinic_visit.dart';
import 'package:medicare/homepage/blank_pages/home_visit.dart';
import 'package:medicare/homepage/blank_pages/doctors.dart';
import '../constants/text_buttons/home_page_text_buttons/information_row.dart';

class CHomePage extends StatelessWidget {
  const CHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('HomePage'),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.only(top: 180.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ClinicVisit(),
                        ));
                      },
                      child: const SquareTextButton(
                          Icons.local_hospital, 'Clinic Visit'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeVisit(),
                        ));
                      },
                      child: const SquareTextButton(Icons.home, 'Home Visit'),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Column(
                  children: [
                    BlueColumnBox('What are the symptoms?'),
                    const SizedBox(height: 10.0),
                    const InformationRow(
                      text: 'Temperature',
                    ),
                    const InformationRow(
                      text: 'Fever',
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Doctors(),
                        ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: BlueColumnBox('Popular doctors'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
