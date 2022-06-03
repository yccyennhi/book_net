import 'package:equatable/equatable.dart';

import '../status.dart';


class LogInState extends Equatable {
  const LogInState._({this.status = Status.initial});

  final Status status;

  const LogInState.initial() : this._();

  const LogInState.inProgress() : this._(status: Status.inProgress);

  const LogInState.logInFail() : this._(status: Status.fail);

  const LogInState.logInSuccess() : this._(status: Status.success);

  @override
  List<Object> get props => [status];
}
