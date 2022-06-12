import 'dart:convert';
import 'dart:io';
import 'package:arbitex/Navigation/shared_preferences.dart';
import 'package:arbitex/models/user_details_model.dart';
import 'package:http/http.dart' as http;

class UserDetails {
  //var log = Logger();
  Future get(String url) async {
    final String accessToken = await SharedPrefrence().getToken();
    final response = await http.get(
      Uri.parse(url),
      headers: {
        HttpHeaders.contentTypeHeader: "application/json",
        HttpHeaders.authorizationHeader: "Bearer $accessToken",
      },
    );
    if(response.statusCode == 200){
      print(response.body);
      return json.decode(response.body);
    }
  }
}





// class GetUserProfile {
//   //static Future<List<UserInfo>> getAllDetails() async {
//     //Future<UserInfo> getAllDetails() async {
//     List<UserInfo> userInfo = [];
//     final String accessToken = await SharedPrefrence().getToken();
//     final response = await http.get(
//       Uri.parse('https://abitrex-backend.herokuapp.com/api/account/myprofile'),
//       headers: {
//         HttpHeaders.contentTypeHeader: "application/json",
//         HttpHeaders.authorizationHeader: "Bearer $accessToken",
//       },
//     );
//
//     // if(response.statusCode == 200){
//     //   print(response.body);
//     //   //userInfo = UserInfo.fromJson(response) as List<UserInfo>;
//     //   userInfo = (response.body as List).map((e) => UserInfo.fromJson(e),).toList();
//     // }
//     //UserInfo.fromJson(response);
//     //return UserInfo.fromJson(jsonDecode(response.body));
//     //return userInfo;
//      var res = jsonDecode(response.body.toString());
//      userInfo = res.map((model) => UserInfo.fromJson(model)).toList();
//      var body = res['body'];
//      print(body);
//      userInfo = UserInfo.fromJson(body) as List<UserInfo>;
//     return userInfo;
//     //
//     // // if (response.statusCode == 200) {
//     //   print('getAll users is working');
//     //
//     //   Map<String, dynamic> map = json.decode(response.body);
//     //   Map<String, dynamic> data = map["body"];
//     //
//     //     // userInfo.add(UserInfo(
//     //     //     userId: body['userId'],
//     //     //     email: body['email'],
//     //     //     fullName: body['fullName'],
//     //     //     username: body['username'],
//     //     //     role: body['role'],
//     //     //     kycStatus: body['kycStatus'],
//     //     //     createdAt: body['createdAt'],
//     //     //     updatedAt: body['updatedAt'],
//     //     //     status: body['status'],
//     //     //     authProvider: body['authProvider'],
//     //     //     mobileNumber: body['mobileNumber'],
//     //     //     avatar: body['avatar'],
//     //     //     bio: body['bio'],
//     //     //     coverImage: body['coverImage']
//     //     // ));
//     //
//     //   // //username
//     //   // String username = data['username'];
//     //   // SharedPrefrence().setUsername(username);
//     //   // //full name
//     //   // String fullName = data['fullName'];
//     //   // SharedPrefrence().setFullname(fullName);
//     //   // //email
//     //   // String email = data['email'];
//     //   // SharedPrefrence().setEmailLogin(email);
//     //   //
//     //   // return UserInfo.fromJson(jsonDecode(response.body));
//     //   //return body.map<UserInfo>(UserInfo.fromJson).toList();
//     // return userInfo;
//
//     // } else {
//     //   throw Exception('faileeeeeeeeed');
//     // }
//   }
// }
