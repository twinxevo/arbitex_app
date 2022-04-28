import 'dart:convert';
// OtpBody usersFromJson(String str) => OtpBody.fromJson(json.decode(str));
//
// String usersToJson(OtpBody data) => json.encode(data.toJson());

class OtpBody{
  String email;
  String verificationCode;
  //String accessToken;

  OtpBody({
    required this.email,
    required this.verificationCode,
    //required this.accessToken,

  });

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data["verificationCode"] = verificationCode;
    //data['accessToken'] = accessToken;
    return data;
  }

  // static fromJson(decode) {}
}