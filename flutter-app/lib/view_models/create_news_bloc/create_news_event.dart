import 'dart:io';

import 'package:book_net/dto/news/base_news_dto.dart';
import 'package:equatable/equatable.dart';

abstract class CreateNewsEvent extends Equatable {
  const CreateNewsEvent();

  @override
  List<Object> get props => [];
}

class PushNewsEvent extends CreateNewsEvent {
  final List<File> files;
  // final BaseNewsDto news;

  const PushNewsEvent({
    required this.files,
    // required this.news,
  });

  @override
  List<Object> get props => [
        files,
        // news,
      ];
}
