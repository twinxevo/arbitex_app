import 'package:arbitex/api_service/login_service_dataclass.dart';
import 'package:arbitex/api_service/signup_service.dart';
import 'package:arbitex/models/login_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../Navigation/shared_preferences.dart';
import '../models/signup_model.dart';

class LoginDataClass extends ChangeNotifier {
  bool loading = false;
  bool isBack = false;

  //Map<String, dynamic>? get data => null;
  Future<void> postLoginData(Data body) async {
    loading = true;
    notifyListeners();
    http.Response response = (await login(body))!;
    if (response.statusCode == 200) {

      Map<String, dynamic> map = json.decode(response.body);
      Map<String, dynamic> data = map["body"];
      String accessToken = data['accessToken'];
      //String message = data['message'];
      print('token = $accessToken');
      SharedPrefrence().setToken(accessToken);
      //SharedPrefrence().setMessage(message);


      isBack = true;

    }else
    {
      print('error logging in');
      print(response.statusCode.toString());
      print(response.statusCode);
      print(response.body);
    }
    loading = false;
    notifyListeners();
  }
}