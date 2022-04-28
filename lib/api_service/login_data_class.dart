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
  Future<void> postLoginData(LoginBody body) async {
    loading = true;
    notifyListeners();
    http.Response response = (await login(body))!;
    if (response.statusCode == 200) {
      // var token = Model.fromJson(data).token;
      // SharedPrefrence().setToken(token);
      print('Login successful');
      print(response.statusCode);
      print(response.body);
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