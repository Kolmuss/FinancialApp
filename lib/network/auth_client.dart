
import 'package:dio/dio.dart';
import 'package:financial_app/core/env.dart';
import 'package:financial_app/models/auth/user_registration.dart';
import 'package:financial_app/models/auth/user_validation.dart';
import 'package:retrofit/http.dart';

part 'auth_client.g.dart';

@RestApi(baseUrl: authClientUrl)
abstract class AuthClient {

  @POST('/user_validate')
  Future<UserValidationResponse?>? userValidate(@Body() String token);

  @POST('/registration')
  Future<UserValidationResponse?>? registration(@Body() User user);

  @POST('/registration')
  Future<UserValidationResponse?>? login(@Body() User body);

  @PUT('/usr')
  Future<UserValidationResponse?>? updatePassword(@Body() UserPasswordChange body);
}