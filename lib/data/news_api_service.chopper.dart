// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$NewsApiService extends NewsApiService {
  _$NewsApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = NewsApiService;

  @override
  Future<Response<Map<String, dynamic>>> getNews(
    String query,
    String apiKey,
  ) {
    final Uri $url = Uri.parse('/v2/everything');
    final Map<String, dynamic> $params = <String, dynamic>{
      'q': query,
      'apiKey': apiKey,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }
}
