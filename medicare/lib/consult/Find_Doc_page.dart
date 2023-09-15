import 'package:flutter/material.dart';
import 'package:medicare/constants/appbar.dart';

class FindDoctorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Find A Doctor'),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Search for a Doctor',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Specialty',
                hintText: 'e.g., Cardiologist',
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Location',
                hintText: 'e.g., New York, NY',
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Implement doctor search functionality here
              },
              child: Text('Search'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Search Results',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Display search results here (you can use ListView.builder)
          ],
        ),
      ),
    );
  }
}
