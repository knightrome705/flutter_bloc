// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locationapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationApiImpl _$$LocationApiImplFromJson(Map<String, dynamic> json) =>
    _$LocationApiImpl(
      latitude: (json['latitude'] as num).toDouble(),
      lookupSource: json['lookupSource'] as String,
      longitude: (json['longitude'] as num).toDouble(),
      countryName: json['countryName'] as String,
    );

Map<String, dynamic> _$$LocationApiImplToJson(_$LocationApiImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'lookupSource': instance.lookupSource,
      'longitude': instance.longitude,
      'countryName': instance.countryName,
    };
