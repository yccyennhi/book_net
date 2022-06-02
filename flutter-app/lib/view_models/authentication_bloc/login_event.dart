import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LogInViaUsernameEvent extends LoginEvent {
  final String username, password;

  const LogInViaUsernameEvent({required this.username, required this.password});

  @override
  List<Object> get props => [username, password];
}
