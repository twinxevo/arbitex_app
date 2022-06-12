import 'dart:convert';
LoginResponseModel usersFromJson(String str) => LoginResponseModel.fromJson(json.decode(str));
String usersTojson(LoginResponseModel body) => json.encode(body.toString());

class LoginResponseModel {
  int statuscode;
  Data data;
  String message;
  String accessToken;

  LoginResponseModel({
    required this.statuscode,
    required this.data,
    required this.message,
    required this.accessToken,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) => LoginResponseModel(
    statuscode: json['statuscode'],
    message: json['message'],
    data: Data.fromJson(json['data']),
    accessToken: json['accessToken'],
  );

  Map<String, dynamic> toJson() => {
    'statusscode': statuscode,
    'data': data.toJson(),
    'message': message,
    'accessToken': accessToken,
  };
}

class Data {
  String? userId;
  String email;
  String password;
  String? fullName;
  String? username;
  String? role;
  String? kycStatus;
  DateTime? createdAt;
  dynamic updatedAt;
  String? status;
  dynamic authProvider;
  //String? accessToken;

  Data({
        this.userId,
        required this.email,
        required this.password,
        this.fullName,
        this.username,
        this.role,
        this.kycStatus,
        this.createdAt,
        this.updatedAt,
        this.status,
        this.authProvider,
        //this.accessToken
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    userId: json['userId'],
    email: json['email'],
    password: json['password'],
    fullName: json['fullName'],
    username: json['username'],
    role: json['role'],
    kycStatus: json['kycStatus'],
    createdAt: DateTime.parse(json['createdAt']),
    updatedAt: json['updatedAt'],
    status: json['status'],
    authProvider: json['authProvider'],
    //accessToken: json['accessToken'],
  );

  Map<String, dynamic> toJson() => {
    'userId': userId,
    'email': email,
    'password': password,
    'fullName': fullName,
    'username': username,
    'role': role,
    'kycStatus': kycStatus,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt,
    'status': status,
    'authProvider': authProvider,
    //'accessToken': accessToken,
  };
}









// class LoginResponseModel {
//   final String accessToken;
//   final String message;
//
//   LoginResponseModel({
//     required this.accessToken,
//     required this.message
//   });
//
//   factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
//     return LoginResponseModel(accessToken: json['accessToken'] !=null ? json['accessToken']: "", message: json['message'] !=null ? json['message']: "");
//   }
// }
//
// class LoginRequestModel {
//   String email;
//   String password;
//
//   LoginRequestModel({
//     required this.email,
//     required this.password
//   });
//
//   Map<String, dynamic> toJson() {
//     Map<String, dynamic> map = {
//       'email': email.trim(),
//       'password': password.trim(),
//     };
//
//     return map;
//   }
// }
