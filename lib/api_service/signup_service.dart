import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:arbitex/Pages/signup.dart';
import 'package:http/http.dart' as http;
import '../models/signup_model.dart';

Future<http.Response?> register(SignupBody data) async {
  http.Response? response;
  try {
    response =
    await http.post(
        Uri.parse("https://abitrex-backend.herokuapp.com/api/auth/register"),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        },
        body: jsonEncode(data.toJson()));
  } catch (e) {
    log(e.toString());
  }
  return response;
}