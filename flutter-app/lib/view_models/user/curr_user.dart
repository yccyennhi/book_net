import 'package:book_net/dto/user/user_dto.dart';

class CurrUserData {
  static final CurrUserData _singleton = CurrUserData._internal();

  CurrUserData._internal();

  factory CurrUserData() {
    return _singleton;
  }

  UserDto? user;

  String get userId => user!.id;

  setUser(UserDto userdto) => user = userdto;
}

// Use for UI testing
