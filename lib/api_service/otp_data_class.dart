import 'package:arbitex/api_service/otp_service.dart';
import 'package:arbitex/api_service/signup_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../models/otp_model.dart';
import '../models/signup_model.dart';

class OtpDataClass extends ChangeNotifier {
  bool loading = false;
  bool isBack = false;
  Future<void> postOtpData(OtpBody body) async {
    loading = true;
    notifyListeners();
    http.Response response = (await sendotp(body))!;
    if (response.statusCode == 200) {
      print('Otp successfully sent');
      print(response.statusCode);
      print(response.body);
      isBack = true;

    }else
    {
      print('error sending otp');
      print(response.statusCode.toString());
      print(response.statusCode);
      print(response.body);
    }
    loading = false;
    notifyListeners();
  }
}