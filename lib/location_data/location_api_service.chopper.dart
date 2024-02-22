// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$LocationApiService extends LocationApiService {
  _$LocationApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = LocationApiService;

  @override
  Future<Response<Map<String, dynamic>>> getLocation() {
    final Uri $url = Uri.parse('/data/reverse-geocode-client');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }
}
