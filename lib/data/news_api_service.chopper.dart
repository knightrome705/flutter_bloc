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
  Future<Response<dynamic>> getnewses() {
    final Uri $url = Uri.parse(
        '/everything?q=keyword&apiKey=8bfaaf2415b742bebba0d93fc194e6ad');
    final Map<String, String> $headers = {
      'content-Type': 'application/json',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
