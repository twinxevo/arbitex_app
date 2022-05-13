import 'package:arbitex/Pages/signup.dart';
import 'dart:convert';

LoginBody usersFromJson(String str) => LoginBody.fromJson(json.decode(str));

String usersToJson(LoginBody data) => json.encode(data.toJson());

class LoginBody{
  // //String statusCode;
  // Body body;
  // String accessToken;
  String email;
  String password;
  String? accessToken;

  LoginBody({
    // //required this.statusCode,
    // required this.body,
    // required this.accessToken,
    required this.email,
    required this.password,
    this.accessToken,
  });

  factory LoginBody.fromJson(Map<String, dynamic> json) => LoginBody(
      // //statusCode: json["statusCode"],
      // body: Body.fromJson(json["body"]),
      // accessToken: json["accessToken"],
    email: json["email"],
    password: json["password"],
    accessToken: json["accesstoken"],
  );

  // Map<String, dynamic> toJson(){
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   //data['statusCode'] = statusCode;
  //   data['body'] = body.toJson();
  //   data['accessToken'] = accessToken;
  //   return data;
  // }

  Map<String, dynamic> toJson() =>{
    // //final Map<String, dynamic> data = <String, dynamic>{};
    // //data['statusCode'] = statusCode;
    // 'body': body.toJson(),
    // 'accessToken': accessToken,
    // //return data;
    //final Map<String, dynamic> data = <String, dynamic>{};
    'email': email,
    'password': password,
    'accessToken': accessToken,
    //return data;
  };
}

class Body{
  // String email;
  // String password;
  //String statusCode;
  Body body;
  String accessToken;

  Body({
    // required this.email,
    // required this.password,
    //required this.statusCode,
    required this.body,
    required this.accessToken,
  });

  factory Body.fromJson(Map<String, dynamic> json) => Body(
    // email: json["email"],
    // password: json["password"],
    //statusCode: json["statusCode"],
    body: Body.fromJson(json["body"]),
    accessToken: json["accessToken"],
  );

  // Map<String, dynamic> toJson(){
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['email'] = email;
  //   data['password'] = password;
  //   return data;
  // }

  // Map<String, dynamic> toJson() => {
  //   // //final Map<String, dynamic> data = <String, dynamic>{};
  //   // 'email': email,
  //   // 'password': password,
  //   // //return data;
  //   //final Map<String, dynamic> data = <String, dynamic>{};
  //   //data['statusCode'] = statusCode;
  //   'body': body.toJson(),
  //   'accessToken': accessToken,
  //   //return data;
  // };

Map<String, dynamic> toJson(){
  final Map<String, dynamic> data = <String, dynamic>{};
  //data['statusCode'] = statusCode;
  data['body'] = body.toJson();
  data['accessToken'] = accessToken;
  return data;
}
}
