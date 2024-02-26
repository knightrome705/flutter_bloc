part of 'wheather_cubit.dart';

@freezed
class WheatherState with _$WheatherState {
  const factory WheatherState.initial() = _Initial;
  const factory WheatherState.loading() = _Loading;
  const factory WheatherState.loaded(WeatherApiModel weatherApiModel) = _Loaded;
}
