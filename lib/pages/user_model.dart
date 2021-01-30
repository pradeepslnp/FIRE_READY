import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.video1,
    this.video2,
    this.video3,
  });

  String video1;
  String video2;
  String video3;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        video1: json["video1"],
        video2: json["video2"],
        video3: json["video3"],
      );

  Map<String, dynamic> toJson() => {
        "video1": video1,
        "video2": video2,
        "video3": video3,
      };
}
