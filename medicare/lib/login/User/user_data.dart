import 'package:shared_preferences/shared_preferences.dart';

class UserData {
  final String fullName;
  final String studentEmail;
  final String phoneNumber;
  final String studentID;
  final String password;

  UserData({
    required this.fullName,
    required this.studentEmail,
    required this.phoneNumber,
    required this.studentID,
    required this.password,
  });

  // Save user data to local storage
  Future<void> saveUserData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('fullName', fullName);
    await prefs.setString('studentEmail', studentEmail);
    await prefs.setString('phoneNumber', phoneNumber);
    await prefs.setString('studentID', studentID);
    await prefs.setString('password', password);
  }

  // Load user data from local storage
  static Future<UserData?> loadUserData() async {
    final prefs = await SharedPreferences.getInstance();
    final fullName = prefs.getString('fullName');
    final studentEmail = prefs.getString('studentEmail');
    final phoneNumber = prefs.getString('phoneNumber');
    final studentID = prefs.getString('studentID');
    final password = prefs.getString('password');

    if (fullName != null &&
        studentEmail != null &&
        phoneNumber != null &&
        studentID != null &&
        password != null) {
      return UserData(
        fullName: fullName,
        studentEmail: studentEmail,
        phoneNumber: phoneNumber,
        studentID: studentID,
        password: password,
      );
    }

    return null;
  }

  // Clear user data from local storage (e.g., when user logs out)
  static Future<void> clearUserData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
