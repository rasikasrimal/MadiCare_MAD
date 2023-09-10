import 'package:flutter/material.dart';
import 'package:profile/pages/profile.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.userprofile});
  final Datum userprofile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${userprofile.name}'s"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  radius: 152,
                  backgroundColor:
                      userprofile.age > 30 ? Colors.green : Colors.red,
                  child: CircleAvatar(
                    radius: 150,
                    backgroundImage: NetworkImage(userprofile.profile),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  userprofile.name,
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      userprofile.age > 30
                          ? ' Name:  ${userprofile.name} \n\n DOB:  ${userprofile.dob} \n\nAge:  ${userprofile.age} \n\n Bmi: ${userprofile.bmi} \n\n AppointmentsDate: ${userprofile.appointment} \n\n'
                          : ' Name:  ${userprofile.name} \n\n DOB:  ${userprofile.dob} \n\nAge:  ${userprofile.age} \n\n Bmi: ${userprofile.bmi} \n\n AppointmentsDate: ${userprofile.appointment} \n\n',
                      style: TextStyle(
                        fontSize: 22,
                        color: userprofile.age > 30 ? Colors.green : Colors.red,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
