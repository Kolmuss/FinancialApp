import 'package:json_annotation/json_annotation.dart';

part 'user_registration.g.dart';

@JsonSerializable()
class User {
  final String? firstname;
  final String? lastname;
  final String? patronymic;
  final String? email;
  final String? username;
  final String? password;

  User(
      {this.firstname,
      this.lastname,
      this.patronymic,
      this.email,
      this.username,
      this.password});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class UserPasswordChange {
  final String? oldPassword;
  final String? newPassword;
  final String? confirmPassword;

  UserPasswordChange({
    this.oldPassword,
    this.newPassword,
    this.confirmPassword,
  });

  factory UserPasswordChange.fromJson(Map<String, dynamic> json) =>
      _$UserPasswordChangeFromJson(json);

  Map<String, dynamic> toJson() => _$UserPasswordChangeToJson(this);
}
