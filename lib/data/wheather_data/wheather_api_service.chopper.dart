// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wheather_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$WheatherApiService extends WheatherApiService {
  _$WheatherApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = WheatherApiService;

  @override
  Future<Response<Map<String, dynamic>>> getCurrentWheather(
    String query,
    String apiKey,
  ) {
    final Uri $url = Uri.parse('/v1/current.json');
    final Map<String, dynamic> $params = <String, dynamic>{
      'q': query,
      'key': apiKey,
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
