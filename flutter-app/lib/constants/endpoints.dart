import '../configs/app_configs.dart';

class AppEndpoints {
  // Use to append to base apiUrl
  static const _baseUrl = AppConfigs.apiUrl;

  static const _authEndPoint = "$_baseUrl/auth";
  static const signInEndPoint = _authEndPoint + "/signin";
}
