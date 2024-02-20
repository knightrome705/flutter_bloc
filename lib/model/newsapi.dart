import 'package:freezed_annotation/freezed_annotation.dart';

part 'newsapi.freezed.dart';

part 'newsapi.g.dart';

@freezed
class NewsApi with _$NewsApi {
  const factory NewsApi({
    required List<Articles> articles
}) = _NewsApi;

  factory NewsApi.fromJson(Map<String,dynamic> json) =>
      _$NewsApiFromJson(json);
}

@freezed
class Articles with _$Articles {
  const factory Articles({
    required Source? source,
    required String? author,
    required String? title,
    required String? description,
    required String? url,
    required String? urlToImage,
    required String? publishedAt,
    required String? content
}) = _Articles;

  factory Articles.fromJson(Map<String, dynamic> json) =>
      _$ArticlesFromJson(json);
}

@freezed
class Source with _$Source {
  const factory Source({
   required String? id,
    required String? name
}) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}