import 'package:book_net/configs/app_configs.dart';
import 'package:book_net/constants/endpoints.dart';
import 'package:dio/dio.dart';

class AuthenticationRepository {
  static final AuthenticationRepository _singleton =
      AuthenticationRepository._internal();

  factory AuthenticationRepository() {
    return _singleton;
  }

  AuthenticationRepository._internal();

  String? _accessToken;

  set accessToken(String? val) => _accessToken = val;

  Future<Response> logIn(String username, String password) async {
    Dio _dio = Dio();
    Response response = await _dio.post(AppEndpoints.signInEndPoint,
        data: {"username": username, "password": password});
    return response;
  }
}
