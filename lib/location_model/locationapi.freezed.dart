// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locationapi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationApi _$LocationApiFromJson(Map<String, dynamic> json) {
  return _LocationApi.fromJson(json);
}

/// @nodoc
mixin _$LocationApi {
  double get latitude => throw _privateConstructorUsedError;
  String get lookupSource => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get countryName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationApiCopyWith<LocationApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationApiCopyWith<$Res> {
  factory $LocationApiCopyWith(
          LocationApi value, $Res Function(LocationApi) then) =
      _$LocationApiCopyWithImpl<$Res, LocationApi>;
  @useResult
  $Res call(
      {double latitude,
      String lookupSource,
      double longitude,
      String countryName});
}

/// @nodoc
class _$LocationApiCopyWithImpl<$Res, $Val extends LocationApi>
    implements $LocationApiCopyWith<$Res> {
  _$LocationApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? lookupSource = null,
    Object? longitude = null,
    Object? countryName = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      lookupSource: null == lookupSource
          ? _value.lookupSource
          : lookupSource // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationApiImplCopyWith<$Res>
    implements $LocationApiCopyWith<$Res> {
  factory _$$LocationApiImplCopyWith(
          _$LocationApiImpl value, $Res Function(_$LocationApiImpl) then) =
      __$$LocationApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double latitude,
      String lookupSource,
      double longitude,
      String countryName});
}

/// @nodoc
class __$$LocationApiImplCopyWithImpl<$Res>
    extends _$LocationApiCopyWithImpl<$Res, _$LocationApiImpl>
    implements _$$LocationApiImplCopyWith<$Res> {
  __$$LocationApiImplCopyWithImpl(
      _$LocationApiImpl _value, $Res Function(_$LocationApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? lookupSource = null,
    Object? longitude = null,
    Object? countryName = null,
  }) {
    return _then(_$LocationApiImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      lookupSource: null == lookupSource
          ? _value.lookupSource
          : lookupSource // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationApiImpl implements _LocationApi {
  const _$LocationApiImpl(
      {required this.latitude,
      required this.lookupSource,
      required this.longitude,
      required this.countryName});

  factory _$LocationApiImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationApiImplFromJson(json);

  @override
  final double latitude;
  @override
  final String lookupSource;
  @override
  final double longitude;
  @override
  final String countryName;

  @override
  String toString() {
    return 'LocationApi(latitude: $latitude, lookupSource: $lookupSource, longitude: $longitude, countryName: $countryName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationApiImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.lookupSource, lookupSource) ||
                other.lookupSource == lookupSource) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, latitude, lookupSource, longitude, countryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationApiImplCopyWith<_$LocationApiImpl> get copyWith =>
      __$$LocationApiImplCopyWithImpl<_$LocationApiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationApiImplToJson(
      this,
    );
  }
}

abstract class _LocationApi implements LocationApi {
  const factory _LocationApi(
      {required final double latitude,
      required final String lookupSource,
      required final double longitude,
      required final String countryName}) = _$LocationApiImpl;

  factory _LocationApi.fromJson(Map<String, dynamic> json) =
      _$LocationApiImpl.fromJson;

  @override
  double get latitude;
  @override
  String get lookupSource;
  @override
  double get longitude;
  @override
  String get countryName;
  @override
  @JsonKey(ignore: true)
  _$$LocationApiImplCopyWith<_$LocationApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
