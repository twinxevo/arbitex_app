import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:arbitex/Pages/signup.dart';
import 'package:http/http.dart' as http;
import '../models/login_model.dart';

Future<http.Response?> login(Data data) async {
  http.Response? response;
  try {
    response =
    await http.post(
        Uri.parse("https://abitrex-backend.herokuapp.com/api/auth/login"),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        },
        body: jsonEncode(data.toJson()));
  } catch (e) {
    log(e.toString());
  }
  return response;
}








// import 'dart:io';
// import 'package:arbitex/models/login_model.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// class LoginDataClass extends ChangeNotifier {
// //class LoginDataClass {
//   bool loading = false;
//   bool isBack = false;
//
//   Future<http.Response> login (String email, String password) async{
//     var loginDetails = jsonEncode({'email': email, 'password': password});
//     http.Response response = await http.post(Uri.parse("https://abitrex-backend.herokuapp.com/api/auth/login"),
//     headers: {
//       HttpHeaders.contentTypeHeader: "application/json"
//     },
//     body: loginDetails
//     );
//
//     loading = true;
//     notifyListeners();
//
//     if(response.statusCode == 200){
//       isBack = true;
//       //var data = jsonDecode(response.body);
//       //var accessToken = LoginResponseModel.fromJson(data).accessToken;
//       //var token = data["accessToken"];
//       //print('Token = ${accessToken}');
//
//       Map<String, dynamic> map = json.decode(response.body);
//       Map<String, dynamic> data = map["body"];
//       String accessToken = data['accessToken'];
//       print(accessToken);
//       //print(data["accessToken"]);
//       //print(response.body);
//       return response;
//     }
//     else{
//       throw Exception('Failed to login');
//     }
//   }
// }
