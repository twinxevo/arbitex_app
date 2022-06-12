import 'dart:convert';

// List<UserInfo> userFromJson(String str) =>
//     List<UserInfo>.from(json.decode(str).map((x) => UserInfo.fromMap(x)));

class UserInfo {
  String userId;
  String email;
  String fullName;
  String username;
  String? role;
  String? kycStatus;
  String? createdAt;
  String? updatedAt;
  String? status;
  String? authProvider;
  String? mobileNumber;
  String? avatar;
  String? bio;
  String? coverImage;

  UserInfo(
      {
        required this.userId,
        required this.email,
        required this.fullName,
        required this.username,
        this.role,
        this.kycStatus,
        this.createdAt,
        this.updatedAt,
        this.status,
        this.authProvider,
        this.mobileNumber,
        this.avatar,
        this.bio,
        this.coverImage,
        //this.connectedWallet
      });

  // factory UserInfo.fromJson(Map<String, dynamic> json) {
  //   return UserInfo(
  //     userId: json['userId'],
  //     email: json['email'],
  //     fullName: json['fullName'],
  //     username: json['username'],
  //     role: json['role'],
  //     kycStatus: json['kycStatus'],
  //     createdAt: json['createdAt'],
  //     updatedAt: json['updatedAt'],
  //     status: json['status'],
  //     authProvider: json['authProvider'],
  //     mobileNumber: json['mobileNumber'],
  //     avatar: json['avatar'],
  //     bio: json['bio'],
  //     coverImage: json['coverImage'],
  //   );
  // }

  static UserInfo fromJson(json) => UserInfo(
      userId: json['userId'],
      email: json['email'],
      fullName: json['fullName'],
      username: json['username'],
      role: json['role'],
      kycStatus: json['kycStatus'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      status: json['status'],
      authProvider: json['authProvider'],
      mobileNumber: json['mobileNumber'],
      avatar: json['avatar'],
      bio: json['bio'],
      coverImage: json['coverImage'],
    );


  // Map<String, dynamic> toJson() => {
  //   'userId': userId,
  //   'email': email,
  //   'fullName': fullName,
  //   'username': username,
  //   'role': role,
  //   'kycStatus': kycStatus,
  //   'createdAt': createdAt,
  //   'updatedAt': updatedAt,
  //   'status': status,
  //   'authProvider': authProvider,
  //   'mobileNumber': mobileNumber,
  //   'avatar': avatar,
  //   'bio': bio,
  //   'coverImage': coverImage,
  //
  // };
}



// class UserDetails {
//   int statuscode;
//   UserInfo body;
//   String message;
//
//   UserDetails({
//     required this.statuscode,
//     required this.body,
//     required this.message
//   });
//
//   factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails (
//     statuscode: json['statuscode'],
//     body: UserInfo.fromJson(json['body']),
//     message: json['message'],
//   );
//
//   Map<String, dynamic> toJson() => {
//     'statuscode': statuscode,
//     'body': body.toJson(),
//     'message': message,
//   };
// }

