import 'package:dio/dio.dart';

import 'authentication/authentication_repository.dart';

class HttpHeaderOption {
  static final _singleton = HttpHeaderOption._internal();

  factory HttpHeaderOption() {
    return _singleton;
  }

  HttpHeaderOption._internal();

  final options = Options(
    headers: {
      "Authorization": "Bearer ${AuthenticationRepository().accessToken}"
    },
  );
}
