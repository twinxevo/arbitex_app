
class SignupBody{
  String email;
  String fullName;
  String username;
  String password;
  String confirmPassword;

  SignupBody({
    required this.email,
    required this.fullName,
    required this.username,
    required this.password,
    required this.confirmPassword
  });

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data["fullName"] = fullName;
    data["username"] = username;
    data['password'] = password;
    data['confirmPassword'] = confirmPassword;
    return data;
  }
}