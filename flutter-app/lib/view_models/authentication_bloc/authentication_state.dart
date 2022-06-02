import 'package:equatable/equatable.dart';

enum LoginStatus { initial, inProgress, fail, success }

class LogInState extends Equatable {
  const LogInState._({this.status = LoginStatus.initial});

  final LoginStatus status;

  const LogInState.initial() : this._();

  const LogInState.inProgress() : this._(status: LoginStatus.inProgress);

  const LogInState.logInFail() : this._(status: LoginStatus.fail);

  const LogInState.logInSuccess() : this._(status: LoginStatus.success);

  @override
  List<Object> get props => [status];
}
