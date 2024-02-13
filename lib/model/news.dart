import 'package:json_annotation/json_annotation.dart';
part 'news.g.dart';

@JsonSerializable()
class News {
  final String author;
  final  String title;
  final String description;
  final  String url;
  final String urlToImage;
  final String publishedAt;
  final String content;
  News({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content
  });
  factory News.fromJson(Map<String,dynamic> json)=>_$NewsFromJson(json);
  Map<String,dynamic> toJson()=> _$NewsToJson(this);
}