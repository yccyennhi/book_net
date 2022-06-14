import 'dart:io';

import 'package:equatable/equatable.dart';

abstract class CreateNewsEvent extends Equatable {
  const CreateNewsEvent();

  @override
  List<Object> get props => [];
}

class PushNewsEvent extends CreateNewsEvent {
  final String caption;
  final List<File> files;

  const PushNewsEvent({
    required this.caption,
    required this.files,
  });

  @override
  List<Object> get props => [
        caption,
        files,
      ];
}
