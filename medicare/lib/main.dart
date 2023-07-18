import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Medicare',
    home: Medicare(),
  ));
}

class Medicare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicare'),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
