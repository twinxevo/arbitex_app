import 'dart:convert';

import 'package:arbitex/api_service/signup_service.dart';
import 'package:arbitex/models/login_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../models/signup_model.dart';

class DataClass extends ChangeNotifier {
  bool loading = false;
  bool isBack = false;
  Future<void> postData(SignupBody body) async {
    loading = true;
    notifyListeners();
    http.Response response = (await register(body))!;
    if (response.statusCode == 200) {
      print('Login successful');
      print(response.statusCode);
      print(response.body);
      isBack = true;

    }else
      {
        print('error signing up');
        print(response.statusCode.toString());
        print(response.statusCode);
        print(response.body);
      }
    loading = false;
    notifyListeners();
  }
}