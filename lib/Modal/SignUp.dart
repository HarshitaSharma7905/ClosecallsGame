// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  String mobile;
  int otp;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  Welcome({
    required this.mobile,
    required this.otp,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    mobile: json["mobile"],
    otp: json["otp"],
    updatedAt: DateTime.parse(json["updated_at"]),
    createdAt: DateTime.parse(json["created_at"]),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "mobile": mobile,
    "otp": otp,
    "updated_at": updatedAt.toIso8601String(),
    "created_at": createdAt.toIso8601String(),
    "id": id,
  };
}
