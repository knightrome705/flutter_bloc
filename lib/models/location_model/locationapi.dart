import 'package:freezed_annotation/freezed_annotation.dart';

part 'locationapi.freezed.dart';

part 'locationapi.g.dart';

@freezed
class LocationApi with _$LocationApi {
  
  const factory LocationApi({
    required double latitude,
    required String lookupSource,
    required double longitude,
    required String countryName,



}) = _LocationApi;

  factory LocationApi.fromJson(Map<String, dynamic> json) =>
      _$LocationApiFromJson(json);
}
