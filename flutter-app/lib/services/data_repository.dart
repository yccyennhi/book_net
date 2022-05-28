import 'package:book_net/configs/app_configs.dart';
import 'package:book_net/constants/endpoints.dart';
import 'package:dio/dio.dart';

class DataRepository {
  static final DataRepository _singleton = DataRepository._internal();

  factory DataRepository() {
    return _singleton;
  }

  DataRepository._internal();

  final baseUrl = AppConfigs.apiUrl;
  String? _accessToken;

  set accessToken(String? val) => _accessToken = val;

  Future<Response> getSomething() async {
    Dio _dio = Dio();
    Response response =
        await _dio.get("$baseUrl${AppEndpoints.exampleEndpoint}");
    return response;
  }
}
