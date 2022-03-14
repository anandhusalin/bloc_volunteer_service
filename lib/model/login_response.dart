import 'dart:convert';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  LoginResponse({this.data, this.message});

  Data? data;
  String? message;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        data: json['data'] != null ? Data.fromJson(json["data"]) : null,
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "data": data!.toJson(),
        "message": message,
      };
}

class Data {
  Data({
    this.id,
    this.name,
    this.email,
    this.username,
    this.emailVerifiedAt,
    this.userType,
    this.loginType,
    this.bio,
    this.gender,
    this.dob,
    this.playerId,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.apiToken,
    this.profileImage,
  });

  int? id;
  String? name;
  String? email;
  String? username;
  dynamic emailVerifiedAt;
  String? userType;
  dynamic loginType;
  dynamic bio;
  dynamic gender;
  dynamic dob;
  dynamic playerId;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? apiToken;
  String? profileImage;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        username: json["username"],
        emailVerifiedAt: json["email_verified_at"],
        userType: json["user_type"],
        loginType: json["login_type"],
        bio: json["bio"],
        gender: json["gender"],
        dob: json["dob"],
        playerId: json["player_id"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        apiToken: json["api_token"],
        profileImage: json["profile_image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "username": username,
        "email_verified_at": emailVerifiedAt,
        "user_type": userType,
        "login_type": loginType,
        "bio": bio,
        "gender": gender,
        "dob": dob,
        "player_id": playerId,
        "status": status,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "api_token": apiToken,
        "profile_image": profileImage,
      };
}
