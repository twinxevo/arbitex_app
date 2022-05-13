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
}
