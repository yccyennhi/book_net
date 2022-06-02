import 'package:book_net/pojo/user/user_pojo.dart';

class CurrUserData {
  static final CurrUserData _singleton = CurrUserData._internal();

  CurrUserData._internal();

  factory CurrUserData() {
    return _singleton;
  }

  UserPojo? user;

  setUser(UserPojo userPojo) => user = userPojo;
}

// Use for UI testing
