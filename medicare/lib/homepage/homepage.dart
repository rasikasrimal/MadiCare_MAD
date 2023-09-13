// import 'package:flutter/material.dart';
// import 'package:medicare/constants/appbar.dart';
// import 'package:medicare/constants/text_buttons/square_text_button.dart';
// import 'package:medicare/constants/colors.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: MyAppBar('HomePage'),
//       backgroundColor: Colors.white,
//       body: const Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start, // Align items at the top
//           children: [
//             Align(
//               alignment: Alignment.topLeft, // Align to top-left corner
//               child: SquareTextButton(
//                 icon: Icon(
//                   Icons.local_hospital,
//                   size: 40, // Icon size
//                   color: Colors.white, // Icon color
//                 ),
//                 text: 'Clinic Visit',
//                 boxColor: mainColor, // Specify the box color here
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:medicare/constants/appbar.dart';

class CHomePage extends StatelessWidget {
  const CHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Welcome'),
      backgroundColor: Colors.white,
//
//
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome Page - Rowzy',
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
