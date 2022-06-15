import 'package:equatable/equatable.dart';

abstract class NewsDetailEvent extends Equatable {
  String newsId;
  int newsType;

  NewsDetailEvent({required this.newsId, required this.newsType});

  @override
  List<Object> get props => [newsId, newsType];
}

class ReplyToComment extends NewsDetailEvent {
  String userAliasReplied;

  ReplyToComment(
      {required String newsId,
      required int newsType,
      required this.userAliasReplied})
      : super(newsId: newsId, newsType: newsType);
}

class CancelReplyToComment extends NewsDetailEvent {
  CancelReplyToComment({
    required String newsId,
    required int newsType,
  }) : super(newsId: newsId, newsType: newsType);
}

class ReactEvent extends NewsDetailEvent {
  ReactEvent({required String newsId, required int newsType})
      : super(newsId: newsId, newsType: newsType);
}

class PushCommentEvent extends NewsDetailEvent {
  String content;

  PushCommentEvent(
      {required String newsId, required int newsType, required this.content})
      : super(newsId: newsId, newsType: newsType);

  @override
  List<Object> get props => [newsId, newsType, content];
}

class PushReplyComment extends PushCommentEvent {
  String commentId;

  PushReplyComment(
      {required String newsId,
      required int newsType,
      required String content,
      required this.commentId})
      : super(newsId: newsId, newsType: newsType, content: content);

  @override
  List<Object> get props => [newsId, newsType, content, commentId];
}
