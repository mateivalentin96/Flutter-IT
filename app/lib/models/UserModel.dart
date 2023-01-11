// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User? userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User? data) => json.encode(data!.toJson());

class User {
  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    this.passwordHash,
    required this.createdAt,
    required this.bankAccount,
    required this.friends,
  });

  String id;
  String firstName;
  String lastName;
  String email;
  String? passwordHash;
  DateTime createdAt;
  List<BankAccount?> bankAccount;
  List<dynamic> friends;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        passwordHash: json["password_hash"],
        createdAt: DateTime.parse(json["created_at"]),
        bankAccount: json["bank_account"] == null
            ? []
            : List<BankAccount?>.from(
                json["bank_account"]!.map((x) => BankAccount.fromJson(x))),
        friends: json["friends"] == null
            ? []
            : List<dynamic>.from(json["friends"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "password_hash": passwordHash,
        "created_at": createdAt.toIso8601String(),
        "bank_account": bankAccount == null
            ? []
            : List<dynamic>.from(bankAccount.map((x) => x!.toJson())),
        "friends":
            friends == null ? [] : List<dynamic>.from(friends.map((x) => x)),
      };
}

class BankAccount {
  BankAccount({
    this.id,
    this.currency,
    this.amount,
    this.userId,
  });

  String? id;
  String? currency;
  int? amount;
  String? userId;

  factory BankAccount.fromJson(Map<String, dynamic> json) => BankAccount(
        id: json["id"],
        currency: json["currency"],
        amount: json["amount"],
        userId: json["userId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "currency": currency,
        "amount": amount,
        "userId": userId,
      };
}
