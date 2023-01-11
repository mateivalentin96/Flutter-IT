// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome? welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome? data) => json.encode(data!.toJson());

class Welcome {
  Welcome({
    required this.id,
    required this.name,
    required this.age,
    required this.occupation,
    required this.location,
  });

  String id;
  String name;
  int age;
  String occupation;
  String location;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        id: json["id"],
        name: json["name"],
        age: json["age"],
        occupation: json["occupation"],
        location: json["location"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "age": age,
        "occupation": occupation,
        "location": location,
      };
}
