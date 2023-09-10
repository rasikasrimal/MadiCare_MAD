// To parse this JSON data, do
//
//     final userProfile = userProfileFromJson(jsonString);

//import 'package:meta/meta.dart';
import 'dart:convert';

UserProfile userProfileFromJson(String str) =>
    UserProfile.fromJson(json.decode(str));

String userProfileToJson(UserProfile data) => json.encode(data.toJson());

class UserProfile {
  final List<Datum> data;

  UserProfile({
    required this.data,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) => UserProfile(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  final int id;
  final String name;
  final String dob;
  final String profile;
  final int age;
  final int bmi;
  final String appointment;

  Datum({
    required this.id,
    required this.name,
    required this.dob,
    required this.profile,
    required this.age,
    required this.bmi,
    required this.appointment,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["Name"],
        dob: json["DOB"],
        profile: json["profile"],
        age: json["age"],
        bmi: json["BMI"],
        appointment: json["ApoinmentDate"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "Name": name,
        "DOB": dob,
        "profile": profile,
        "age": age,
        "bmi": bmi,
        "appointment": appointment,
      };
}
