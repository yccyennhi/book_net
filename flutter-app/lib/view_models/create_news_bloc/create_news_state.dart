import 'package:book_net/view_models/status.dart';
import 'package:equatable/equatable.dart';

class CreateNewsState extends Equatable {
  const CreateNewsState._({this.status = Status.initial});

  final Status status;

  const CreateNewsState.initial() : this._();

  const CreateNewsState.inProgress() : this._(status: Status.inProgress);

  const CreateNewsState.pushFail() : this._(status: Status.fail);

  const CreateNewsState.pushSuccess() : this._(status: Status.success);

  @override
  List<Object> get props => [status];
}
