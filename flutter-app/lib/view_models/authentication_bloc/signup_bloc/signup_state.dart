import 'package:equatable/equatable.dart';

import '../../status.dart';

class SignUpState extends Equatable {
  const SignUpState._({this.status = Status.initial});

  final Status status;

  const SignUpState.initial() : this._();

  const SignUpState.inProgress() : this._(status: Status.inProgress);

  const SignUpState.signUpFail() : this._(status: Status.fail);

  const SignUpState.signUpSuccess() : this._(status: Status.success);

  @override
  List<Object> get props => [status];
}
