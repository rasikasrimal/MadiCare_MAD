import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:medicare/profile/profile.dart';

// ignore: depend_on_referenced_packages
//import 'package:profile/pages/profile.dart';

import 'details_page.dart';
//import 'package:rest_api_app/users_pets.dart';

class ProfileListPage extends StatefulWidget {
  const ProfileListPage({Key? key}) : super(key: key);

  @override
  State<ProfileListPage> createState() => _HomePageState();
}

class _HomePageState extends State<ProfileListPage> {
  // For holding response as UserPets
  late UserProfile profile;
  // for data is loaded flag
  bool isDataLoaded = false;
  // error holding
  String errorMessage = '';

  // API Call
  Future<UserProfile> getDataFromAPI() async {
    Uri uri =
        Uri.parse('https://asamahamed.github.io/User_Data_Json/data.json');
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      // All ok
      UserProfile profile = userProfileFromJson(response.body);
      setState(() {
        isDataLoaded = true;
      });
      return profile;
    } else {
      errorMessage = '${response.statusCode}: ${response.body} ';
      return UserProfile(data: []);
    }
  }

  callAPIandAssignData() async {
    profile = await getDataFromAPI();
  }

  @override
  void initState() {
    callAPIandAssignData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Profile '),
        centerTitle: true,
      ),
      body: isDataLoaded
          ? errorMessage.isNotEmpty
              ? Text(errorMessage)
              : profile.data.isEmpty
                  ? const Text('No Data')
                  : ListView.builder(
                      itemCount: profile.data.length,
                      itemBuilder: (context, index) => getRow(index),
                    )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  Widget getRow(int index) {
    return Card(
      child: ListTile(
        onTap: () {
          // Navigate to Next Details
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    DetailsPage(userprofile: profile.data[index]),
              ));
        },
        leading: CircleAvatar(
          radius: 21,
          backgroundColor:
              profile.data[index].age > 30 ? Colors.green : Colors.red,
          child: CircleAvatar(
            radius: 20,
            backgroundColor:
                profile.data[index].age > 30 ? Colors.green : Colors.red,
            child: Image.network(
              profile.data[index].profile,
              width: 40, // Adjust the width and height as needed
              height: 40,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.error_outline,
                  color: Colors.red,
                );
              },
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              profile.data[index].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('age: ${profile.data[index].age}'),
          ],
        ),
        trailing: Icon(
          profile.data[index].age > 30 ? Icons.circle : Icons.square,
          color: profile.data[index].age > 30 ? Colors.green : Colors.red,
        ),
      ),
    );
  }
}
