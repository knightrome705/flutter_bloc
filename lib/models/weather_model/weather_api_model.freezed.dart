// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherApiModel _$WeatherApiModelFromJson(Map<String, dynamic> json) {
  return _WeatherApiModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherApiModel {
  Location get location => throw _privateConstructorUsedError;
  Current get current => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherApiModelCopyWith<WeatherApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherApiModelCopyWith<$Res> {
  factory $WeatherApiModelCopyWith(
          WeatherApiModel value, $Res Function(WeatherApiModel) then) =
      _$WeatherApiModelCopyWithImpl<$Res, WeatherApiModel>;
  @useResult
  $Res call({Location location, Current current});

  $LocationCopyWith<$Res> get location;
  $CurrentCopyWith<$Res> get current;
}

/// @nodoc
class _$WeatherApiModelCopyWithImpl<$Res, $Val extends WeatherApiModel>
    implements $WeatherApiModelCopyWith<$Res> {
  _$WeatherApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentCopyWith<$Res> get current {
    return $CurrentCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherApiModelImplCopyWith<$Res>
    implements $WeatherApiModelCopyWith<$Res> {
  factory _$$WeatherApiModelImplCopyWith(_$WeatherApiModelImpl value,
          $Res Function(_$WeatherApiModelImpl) then) =
      __$$WeatherApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Location location, Current current});

  @override
  $LocationCopyWith<$Res> get location;
  @override
  $CurrentCopyWith<$Res> get current;
}

/// @nodoc
class __$$WeatherApiModelImplCopyWithImpl<$Res>
    extends _$WeatherApiModelCopyWithImpl<$Res, _$WeatherApiModelImpl>
    implements _$$WeatherApiModelImplCopyWith<$Res> {
  __$$WeatherApiModelImplCopyWithImpl(
      _$WeatherApiModelImpl _value, $Res Function(_$WeatherApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
  }) {
    return _then(_$WeatherApiModelImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherApiModelImpl implements _WeatherApiModel {
  const _$WeatherApiModelImpl({required this.location, required this.current});

  factory _$WeatherApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherApiModelImplFromJson(json);

  @override
  final Location location;
  @override
  final Current current;

  @override
  String toString() {
    return 'WeatherApiModel(location: $location, current: $current)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherApiModelImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherApiModelImplCopyWith<_$WeatherApiModelImpl> get copyWith =>
      __$$WeatherApiModelImplCopyWithImpl<_$WeatherApiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherApiModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherApiModel implements WeatherApiModel {
  const factory _WeatherApiModel(
      {required final Location location,
      required final Current current}) = _$WeatherApiModelImpl;

  factory _WeatherApiModel.fromJson(Map<String, dynamic> json) =
      _$WeatherApiModelImpl.fromJson;

  @override
  Location get location;
  @override
  Current get current;
  @override
  @JsonKey(ignore: true)
  _$$WeatherApiModelImplCopyWith<_$WeatherApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String get name => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  String get tz_id => throw _privateConstructorUsedError;
  int get localtime_epoch => throw _privateConstructorUsedError;
  String get localtime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {String name,
      String region,
      String country,
      double lat,
      double lon,
      String tz_id,
      int localtime_epoch,
      String localtime});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? country = null,
    Object? lat = null,
    Object? lon = null,
    Object? tz_id = null,
    Object? localtime_epoch = null,
    Object? localtime = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      tz_id: null == tz_id
          ? _value.tz_id
          : tz_id // ignore: cast_nullable_to_non_nullable
              as String,
      localtime_epoch: null == localtime_epoch
          ? _value.localtime_epoch
          : localtime_epoch // ignore: cast_nullable_to_non_nullable
              as int,
      localtime: null == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String region,
      String country,
      double lat,
      double lon,
      String tz_id,
      int localtime_epoch,
      String localtime});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? country = null,
    Object? lat = null,
    Object? lon = null,
    Object? tz_id = null,
    Object? localtime_epoch = null,
    Object? localtime = null,
  }) {
    return _then(_$LocationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      tz_id: null == tz_id
          ? _value.tz_id
          : tz_id // ignore: cast_nullable_to_non_nullable
              as String,
      localtime_epoch: null == localtime_epoch
          ? _value.localtime_epoch
          : localtime_epoch // ignore: cast_nullable_to_non_nullable
              as int,
      localtime: null == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {required this.name,
      required this.region,
      required this.country,
      required this.lat,
      required this.lon,
      required this.tz_id,
      required this.localtime_epoch,
      required this.localtime});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final String name;
  @override
  final String region;
  @override
  final String country;
  @override
  final double lat;
  @override
  final double lon;
  @override
  final String tz_id;
  @override
  final int localtime_epoch;
  @override
  final String localtime;

  @override
  String toString() {
    return 'Location(name: $name, region: $region, country: $country, lat: $lat, lon: $lon, tz_id: $tz_id, localtime_epoch: $localtime_epoch, localtime: $localtime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.tz_id, tz_id) || other.tz_id == tz_id) &&
            (identical(other.localtime_epoch, localtime_epoch) ||
                other.localtime_epoch == localtime_epoch) &&
            (identical(other.localtime, localtime) ||
                other.localtime == localtime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, region, country, lat, lon,
      tz_id, localtime_epoch, localtime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required final String name,
      required final String region,
      required final String country,
      required final double lat,
      required final double lon,
      required final String tz_id,
      required final int localtime_epoch,
      required final String localtime}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  String get name;
  @override
  String get region;
  @override
  String get country;
  @override
  double get lat;
  @override
  double get lon;
  @override
  String get tz_id;
  @override
  int get localtime_epoch;
  @override
  String get localtime;
  @override
  @JsonKey(ignore: true)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Current _$CurrentFromJson(Map<String, dynamic> json) {
  return _Current.fromJson(json);
}

/// @nodoc
mixin _$Current {
  int get last_updated_epoch => throw _privateConstructorUsedError;
  String get last_updated => throw _privateConstructorUsedError;
  double get temp_c => throw _privateConstructorUsedError;
  double get temp_f => throw _privateConstructorUsedError;
  int get is_day => throw _privateConstructorUsedError;
  Condition get condition => throw _privateConstructorUsedError;
  double get wind_mph => throw _privateConstructorUsedError;
  double get wind_kph => throw _privateConstructorUsedError;
  int get wind_degree => throw _privateConstructorUsedError;
  String get wind_dir => throw _privateConstructorUsedError;
  double get pressure_mb => throw _privateConstructorUsedError;
  double get pressure_in => throw _privateConstructorUsedError;
  double get precip_mm => throw _privateConstructorUsedError;
  double get precip_in => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  int get cloud => throw _privateConstructorUsedError;
  double get feelslike_c => throw _privateConstructorUsedError;
  double get feelslike_f => throw _privateConstructorUsedError;
  double get vis_km => throw _privateConstructorUsedError;
  double get vis_miles => throw _privateConstructorUsedError;
  double get uv => throw _privateConstructorUsedError;
  double get gust_mph => throw _privateConstructorUsedError;
  double get gust_kph => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentCopyWith<Current> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentCopyWith<$Res> {
  factory $CurrentCopyWith(Current value, $Res Function(Current) then) =
      _$CurrentCopyWithImpl<$Res, Current>;
  @useResult
  $Res call(
      {int last_updated_epoch,
      String last_updated,
      double temp_c,
      double temp_f,
      int is_day,
      Condition condition,
      double wind_mph,
      double wind_kph,
      int wind_degree,
      String wind_dir,
      double pressure_mb,
      double pressure_in,
      double precip_mm,
      double precip_in,
      int humidity,
      int cloud,
      double feelslike_c,
      double feelslike_f,
      double vis_km,
      double vis_miles,
      double uv,
      double gust_mph,
      double gust_kph});

  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$CurrentCopyWithImpl<$Res, $Val extends Current>
    implements $CurrentCopyWith<$Res> {
  _$CurrentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? last_updated_epoch = null,
    Object? last_updated = null,
    Object? temp_c = null,
    Object? temp_f = null,
    Object? is_day = null,
    Object? condition = null,
    Object? wind_mph = null,
    Object? wind_kph = null,
    Object? wind_degree = null,
    Object? wind_dir = null,
    Object? pressure_mb = null,
    Object? pressure_in = null,
    Object? precip_mm = null,
    Object? precip_in = null,
    Object? humidity = null,
    Object? cloud = null,
    Object? feelslike_c = null,
    Object? feelslike_f = null,
    Object? vis_km = null,
    Object? vis_miles = null,
    Object? uv = null,
    Object? gust_mph = null,
    Object? gust_kph = null,
  }) {
    return _then(_value.copyWith(
      last_updated_epoch: null == last_updated_epoch
          ? _value.last_updated_epoch
          : last_updated_epoch // ignore: cast_nullable_to_non_nullable
              as int,
      last_updated: null == last_updated
          ? _value.last_updated
          : last_updated // ignore: cast_nullable_to_non_nullable
              as String,
      temp_c: null == temp_c
          ? _value.temp_c
          : temp_c // ignore: cast_nullable_to_non_nullable
              as double,
      temp_f: null == temp_f
          ? _value.temp_f
          : temp_f // ignore: cast_nullable_to_non_nullable
              as double,
      is_day: null == is_day
          ? _value.is_day
          : is_day // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition,
      wind_mph: null == wind_mph
          ? _value.wind_mph
          : wind_mph // ignore: cast_nullable_to_non_nullable
              as double,
      wind_kph: null == wind_kph
          ? _value.wind_kph
          : wind_kph // ignore: cast_nullable_to_non_nullable
              as double,
      wind_degree: null == wind_degree
          ? _value.wind_degree
          : wind_degree // ignore: cast_nullable_to_non_nullable
              as int,
      wind_dir: null == wind_dir
          ? _value.wind_dir
          : wind_dir // ignore: cast_nullable_to_non_nullable
              as String,
      pressure_mb: null == pressure_mb
          ? _value.pressure_mb
          : pressure_mb // ignore: cast_nullable_to_non_nullable
              as double,
      pressure_in: null == pressure_in
          ? _value.pressure_in
          : pressure_in // ignore: cast_nullable_to_non_nullable
              as double,
      precip_mm: null == precip_mm
          ? _value.precip_mm
          : precip_mm // ignore: cast_nullable_to_non_nullable
              as double,
      precip_in: null == precip_in
          ? _value.precip_in
          : precip_in // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      cloud: null == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int,
      feelslike_c: null == feelslike_c
          ? _value.feelslike_c
          : feelslike_c // ignore: cast_nullable_to_non_nullable
              as double,
      feelslike_f: null == feelslike_f
          ? _value.feelslike_f
          : feelslike_f // ignore: cast_nullable_to_non_nullable
              as double,
      vis_km: null == vis_km
          ? _value.vis_km
          : vis_km // ignore: cast_nullable_to_non_nullable
              as double,
      vis_miles: null == vis_miles
          ? _value.vis_miles
          : vis_miles // ignore: cast_nullable_to_non_nullable
              as double,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
      gust_mph: null == gust_mph
          ? _value.gust_mph
          : gust_mph // ignore: cast_nullable_to_non_nullable
              as double,
      gust_kph: null == gust_kph
          ? _value.gust_kph
          : gust_kph // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConditionCopyWith<$Res> get condition {
    return $ConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentImplCopyWith<$Res> implements $CurrentCopyWith<$Res> {
  factory _$$CurrentImplCopyWith(
          _$CurrentImpl value, $Res Function(_$CurrentImpl) then) =
      __$$CurrentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int last_updated_epoch,
      String last_updated,
      double temp_c,
      double temp_f,
      int is_day,
      Condition condition,
      double wind_mph,
      double wind_kph,
      int wind_degree,
      String wind_dir,
      double pressure_mb,
      double pressure_in,
      double precip_mm,
      double precip_in,
      int humidity,
      int cloud,
      double feelslike_c,
      double feelslike_f,
      double vis_km,
      double vis_miles,
      double uv,
      double gust_mph,
      double gust_kph});

  @override
  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$$CurrentImplCopyWithImpl<$Res>
    extends _$CurrentCopyWithImpl<$Res, _$CurrentImpl>
    implements _$$CurrentImplCopyWith<$Res> {
  __$$CurrentImplCopyWithImpl(
      _$CurrentImpl _value, $Res Function(_$CurrentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? last_updated_epoch = null,
    Object? last_updated = null,
    Object? temp_c = null,
    Object? temp_f = null,
    Object? is_day = null,
    Object? condition = null,
    Object? wind_mph = null,
    Object? wind_kph = null,
    Object? wind_degree = null,
    Object? wind_dir = null,
    Object? pressure_mb = null,
    Object? pressure_in = null,
    Object? precip_mm = null,
    Object? precip_in = null,
    Object? humidity = null,
    Object? cloud = null,
    Object? feelslike_c = null,
    Object? feelslike_f = null,
    Object? vis_km = null,
    Object? vis_miles = null,
    Object? uv = null,
    Object? gust_mph = null,
    Object? gust_kph = null,
  }) {
    return _then(_$CurrentImpl(
      last_updated_epoch: null == last_updated_epoch
          ? _value.last_updated_epoch
          : last_updated_epoch // ignore: cast_nullable_to_non_nullable
              as int,
      last_updated: null == last_updated
          ? _value.last_updated
          : last_updated // ignore: cast_nullable_to_non_nullable
              as String,
      temp_c: null == temp_c
          ? _value.temp_c
          : temp_c // ignore: cast_nullable_to_non_nullable
              as double,
      temp_f: null == temp_f
          ? _value.temp_f
          : temp_f // ignore: cast_nullable_to_non_nullable
              as double,
      is_day: null == is_day
          ? _value.is_day
          : is_day // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition,
      wind_mph: null == wind_mph
          ? _value.wind_mph
          : wind_mph // ignore: cast_nullable_to_non_nullable
              as double,
      wind_kph: null == wind_kph
          ? _value.wind_kph
          : wind_kph // ignore: cast_nullable_to_non_nullable
              as double,
      wind_degree: null == wind_degree
          ? _value.wind_degree
          : wind_degree // ignore: cast_nullable_to_non_nullable
              as int,
      wind_dir: null == wind_dir
          ? _value.wind_dir
          : wind_dir // ignore: cast_nullable_to_non_nullable
              as String,
      pressure_mb: null == pressure_mb
          ? _value.pressure_mb
          : pressure_mb // ignore: cast_nullable_to_non_nullable
              as double,
      pressure_in: null == pressure_in
          ? _value.pressure_in
          : pressure_in // ignore: cast_nullable_to_non_nullable
              as double,
      precip_mm: null == precip_mm
          ? _value.precip_mm
          : precip_mm // ignore: cast_nullable_to_non_nullable
              as double,
      precip_in: null == precip_in
          ? _value.precip_in
          : precip_in // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      cloud: null == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int,
      feelslike_c: null == feelslike_c
          ? _value.feelslike_c
          : feelslike_c // ignore: cast_nullable_to_non_nullable
              as double,
      feelslike_f: null == feelslike_f
          ? _value.feelslike_f
          : feelslike_f // ignore: cast_nullable_to_non_nullable
              as double,
      vis_km: null == vis_km
          ? _value.vis_km
          : vis_km // ignore: cast_nullable_to_non_nullable
              as double,
      vis_miles: null == vis_miles
          ? _value.vis_miles
          : vis_miles // ignore: cast_nullable_to_non_nullable
              as double,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
      gust_mph: null == gust_mph
          ? _value.gust_mph
          : gust_mph // ignore: cast_nullable_to_non_nullable
              as double,
      gust_kph: null == gust_kph
          ? _value.gust_kph
          : gust_kph // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentImpl implements _Current {
  const _$CurrentImpl(
      {required this.last_updated_epoch,
      required this.last_updated,
      required this.temp_c,
      required this.temp_f,
      required this.is_day,
      required this.condition,
      required this.wind_mph,
      required this.wind_kph,
      required this.wind_degree,
      required this.wind_dir,
      required this.pressure_mb,
      required this.pressure_in,
      required this.precip_mm,
      required this.precip_in,
      required this.humidity,
      required this.cloud,
      required this.feelslike_c,
      required this.feelslike_f,
      required this.vis_km,
      required this.vis_miles,
      required this.uv,
      required this.gust_mph,
      required this.gust_kph});

  factory _$CurrentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentImplFromJson(json);

  @override
  final int last_updated_epoch;
  @override
  final String last_updated;
  @override
  final double temp_c;
  @override
  final double temp_f;
  @override
  final int is_day;
  @override
  final Condition condition;
  @override
  final double wind_mph;
  @override
  final double wind_kph;
  @override
  final int wind_degree;
  @override
  final String wind_dir;
  @override
  final double pressure_mb;
  @override
  final double pressure_in;
  @override
  final double precip_mm;
  @override
  final double precip_in;
  @override
  final int humidity;
  @override
  final int cloud;
  @override
  final double feelslike_c;
  @override
  final double feelslike_f;
  @override
  final double vis_km;
  @override
  final double vis_miles;
  @override
  final double uv;
  @override
  final double gust_mph;
  @override
  final double gust_kph;

  @override
  String toString() {
    return 'Current(last_updated_epoch: $last_updated_epoch, last_updated: $last_updated, temp_c: $temp_c, temp_f: $temp_f, is_day: $is_day, condition: $condition, wind_mph: $wind_mph, wind_kph: $wind_kph, wind_degree: $wind_degree, wind_dir: $wind_dir, pressure_mb: $pressure_mb, pressure_in: $pressure_in, precip_mm: $precip_mm, precip_in: $precip_in, humidity: $humidity, cloud: $cloud, feelslike_c: $feelslike_c, feelslike_f: $feelslike_f, vis_km: $vis_km, vis_miles: $vis_miles, uv: $uv, gust_mph: $gust_mph, gust_kph: $gust_kph)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentImpl &&
            (identical(other.last_updated_epoch, last_updated_epoch) ||
                other.last_updated_epoch == last_updated_epoch) &&
            (identical(other.last_updated, last_updated) ||
                other.last_updated == last_updated) &&
            (identical(other.temp_c, temp_c) || other.temp_c == temp_c) &&
            (identical(other.temp_f, temp_f) || other.temp_f == temp_f) &&
            (identical(other.is_day, is_day) || other.is_day == is_day) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.wind_mph, wind_mph) ||
                other.wind_mph == wind_mph) &&
            (identical(other.wind_kph, wind_kph) ||
                other.wind_kph == wind_kph) &&
            (identical(other.wind_degree, wind_degree) ||
                other.wind_degree == wind_degree) &&
            (identical(other.wind_dir, wind_dir) ||
                other.wind_dir == wind_dir) &&
            (identical(other.pressure_mb, pressure_mb) ||
                other.pressure_mb == pressure_mb) &&
            (identical(other.pressure_in, pressure_in) ||
                other.pressure_in == pressure_in) &&
            (identical(other.precip_mm, precip_mm) ||
                other.precip_mm == precip_mm) &&
            (identical(other.precip_in, precip_in) ||
                other.precip_in == precip_in) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.cloud, cloud) || other.cloud == cloud) &&
            (identical(other.feelslike_c, feelslike_c) ||
                other.feelslike_c == feelslike_c) &&
            (identical(other.feelslike_f, feelslike_f) ||
                other.feelslike_f == feelslike_f) &&
            (identical(other.vis_km, vis_km) || other.vis_km == vis_km) &&
            (identical(other.vis_miles, vis_miles) ||
                other.vis_miles == vis_miles) &&
            (identical(other.uv, uv) || other.uv == uv) &&
            (identical(other.gust_mph, gust_mph) ||
                other.gust_mph == gust_mph) &&
            (identical(other.gust_kph, gust_kph) ||
                other.gust_kph == gust_kph));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        last_updated_epoch,
        last_updated,
        temp_c,
        temp_f,
        is_day,
        condition,
        wind_mph,
        wind_kph,
        wind_degree,
        wind_dir,
        pressure_mb,
        pressure_in,
        precip_mm,
        precip_in,
        humidity,
        cloud,
        feelslike_c,
        feelslike_f,
        vis_km,
        vis_miles,
        uv,
        gust_mph,
        gust_kph
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      __$$CurrentImplCopyWithImpl<_$CurrentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentImplToJson(
      this,
    );
  }
}

abstract class _Current implements Current {
  const factory _Current(
      {required final int last_updated_epoch,
      required final String last_updated,
      required final double temp_c,
      required final double temp_f,
      required final int is_day,
      required final Condition condition,
      required final double wind_mph,
      required final double wind_kph,
      required final int wind_degree,
      required final String wind_dir,
      required final double pressure_mb,
      required final double pressure_in,
      required final double precip_mm,
      required final double precip_in,
      required final int humidity,
      required final int cloud,
      required final double feelslike_c,
      required final double feelslike_f,
      required final double vis_km,
      required final double vis_miles,
      required final double uv,
      required final double gust_mph,
      required final double gust_kph}) = _$CurrentImpl;

  factory _Current.fromJson(Map<String, dynamic> json) = _$CurrentImpl.fromJson;

  @override
  int get last_updated_epoch;
  @override
  String get last_updated;
  @override
  double get temp_c;
  @override
  double get temp_f;
  @override
  int get is_day;
  @override
  Condition get condition;
  @override
  double get wind_mph;
  @override
  double get wind_kph;
  @override
  int get wind_degree;
  @override
  String get wind_dir;
  @override
  double get pressure_mb;
  @override
  double get pressure_in;
  @override
  double get precip_mm;
  @override
  double get precip_in;
  @override
  int get humidity;
  @override
  int get cloud;
  @override
  double get feelslike_c;
  @override
  double get feelslike_f;
  @override
  double get vis_km;
  @override
  double get vis_miles;
  @override
  double get uv;
  @override
  double get gust_mph;
  @override
  double get gust_kph;
  @override
  @JsonKey(ignore: true)
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Condition _$ConditionFromJson(Map<String, dynamic> json) {
  return _Condition.fromJson(json);
}

/// @nodoc
mixin _$Condition {
  String get text => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionCopyWith<Condition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionCopyWith<$Res> {
  factory $ConditionCopyWith(Condition value, $Res Function(Condition) then) =
      _$ConditionCopyWithImpl<$Res, Condition>;
  @useResult
  $Res call({String text, String icon, int code});
}

/// @nodoc
class _$ConditionCopyWithImpl<$Res, $Val extends Condition>
    implements $ConditionCopyWith<$Res> {
  _$ConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConditionImplCopyWith<$Res>
    implements $ConditionCopyWith<$Res> {
  factory _$$ConditionImplCopyWith(
          _$ConditionImpl value, $Res Function(_$ConditionImpl) then) =
      __$$ConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String icon, int code});
}

/// @nodoc
class __$$ConditionImplCopyWithImpl<$Res>
    extends _$ConditionCopyWithImpl<$Res, _$ConditionImpl>
    implements _$$ConditionImplCopyWith<$Res> {
  __$$ConditionImplCopyWithImpl(
      _$ConditionImpl _value, $Res Function(_$ConditionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
    Object? code = null,
  }) {
    return _then(_$ConditionImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionImpl implements _Condition {
  const _$ConditionImpl(
      {required this.text, required this.icon, required this.code});

  factory _$ConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionImplFromJson(json);

  @override
  final String text;
  @override
  final String icon;
  @override
  final int code;

  @override
  String toString() {
    return 'Condition(text: $text, icon: $icon, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, icon, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionImplCopyWith<_$ConditionImpl> get copyWith =>
      __$$ConditionImplCopyWithImpl<_$ConditionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionImplToJson(
      this,
    );
  }
}

abstract class _Condition implements Condition {
  const factory _Condition(
      {required final String text,
      required final String icon,
      required final int code}) = _$ConditionImpl;

  factory _Condition.fromJson(Map<String, dynamic> json) =
      _$ConditionImpl.fromJson;

  @override
  String get text;
  @override
  String get icon;
  @override
  int get code;
  @override
  @JsonKey(ignore: true)
  _$$ConditionImplCopyWith<_$ConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
