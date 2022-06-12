import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrence {
  Future<bool> setEmail(String email) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("email", email);
  }

  Future<String> getEmail() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("email") ?? '';
  }

  //accesstoken

  Future<bool> setToken(String accessToken) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("token", accessToken);
  }

  Future<String> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("token") ?? '';
  }

  //Username

  Future<bool> setUsername(String username) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("username", username);
  }

  Future<String> getUsername() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("username") ?? '';
  }

//fullName

  Future<bool> setFullname(String fullName) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("fullName", fullName);
  }

  Future<String> getFullname() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("fullName") ?? '';
  }

//email

  Future<bool> setEmailLogin(String email) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("email", email);
  }

  Future<String> getEmailLogin() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("email") ?? '';
  }
}

