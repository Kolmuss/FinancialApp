import 'package:json_annotation/json_annotation.dart';

part 'user_validation.g.dart';

@JsonSerializable()
class UserValidationResponse {
  final bool? isValid;
  final String? username;
  final String? authorities;
 

  UserValidationResponse({
    this.isValid,
    this.username,
    this.authorities,
  });

  factory UserValidationResponse.fromJson(Map<String, dynamic> json) => _$UserValidationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserValidationResponseToJson(this);
}