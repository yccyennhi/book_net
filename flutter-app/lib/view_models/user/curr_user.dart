import 'package:book_net/dto/user/user_dto.dart';

class CurrUserData {
  static final CurrUserData _singleton = CurrUserData._internal();

  CurrUserData._internal();

  factory CurrUserData() {
    return _singleton;
  }

  UserDto? user = null;

  setUser(UserDto userdto) => user = userdto;
}

// Use for UI testing
