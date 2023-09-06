import 'package:flutter/material.dart';
import 'package:medicare/login/intro_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => const Home(),
          );
        },
      ),
    );
  }
}
