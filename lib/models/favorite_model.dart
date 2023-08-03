// To parse this JSON data, do
//
//     final testJson = testJsonFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<TestJson> testJsonFromJson(String str) => List<TestJson>.from(json.decode(str).map((x) => TestJson.fromJson(x)));

String testJsonToJson(List<TestJson> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TestJson {
  int id;
  int postId;
  int userId;
  String comment;

  TestJson({
    required this.id,
    required this.postId,
    required this.userId,
    required this.comment,
  });

  TestJson copyWith({
    int? id,
    int? postId,
    int? userId,
    String? comment,
  }) =>
      TestJson(
        id: id ?? this.id,
        postId: postId ?? this.postId,
        userId: userId ?? this.userId,
        comment: comment ?? this.comment,
      );

  factory TestJson.fromJson(Map<String, dynamic> json) => TestJson(
    id: json["id"],
    postId: json["postId"],
    userId: json["userId"],
    comment: json["comment"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "postId": postId,
    "userId": userId,
    "comment": comment,
  };
}