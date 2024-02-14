import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
abstract class NewsModel with _$NewsModel {
  //
  factory NewsModel(final List<News>? news) = _NewsModel;
  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}

@freezed
abstract class News with _$News {
  const factory News({
    required String author,
    required String title,
    required String description,
    required String url,
    required String urlToImage,
    required String publishedAt,
    required String content,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}
