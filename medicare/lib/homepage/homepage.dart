import 'package:flutter/material.dart';
import 'package:medicare/constants/appbar.dart';
import 'package:medicare/constants/text_buttons/home_page_text_buttons/blue_column_box.dart';
import 'package:medicare/constants/text_buttons/home_page_text_buttons/square_text_button.dart';
import 'package:medicare/homepage/blank_pages/blank_page_1.dart';
import 'package:medicare/homepage/blank_pages/blank_page_2.dart';
import 'package:medicare/homepage/blank_pages/blank_page_3.dart';

class CHomePage extends StatelessWidget {
  const CHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('HomePage'),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(height: 16.0),
          Padding(
            padding: EdgeInsets.only(top: 180.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BlankPage(),
                        ));
                      },
                      child: SquareTextButton(
                          Icons.local_hospital, 'Clinic Visit'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BlankPage2(),
                        ));
                      },
                      child: SquareTextButton(Icons.home, 'Home Visit'),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Column(
                  children: [
                    BlueColumnBox('What are the symptoms?', ''),
                    SizedBox(height: 10.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 250.0),
                          child: Text(
                            'Temperature',
                            style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 300.0),
                          child: Text(
                            'Fever',
                            style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BlankPage3(),
                        ));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: BlueColumnBox('Popular doctors', ''),
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
