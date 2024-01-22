import 'dart:io';

class UserData {
  String firstname;
  String lastname;
  String? middlename;
  String? birthday;
  String tel1;
  String? tel2;
  File? profilePhoto;
  String? username;
  String? password;

  UserData({
    required this.firstname,
    required this.lastname,
    this.middlename,
    this.birthday,
    required this.tel1,
    this.tel2,
    this.profilePhoto,
    this.username,
    this.password,
  });
}
