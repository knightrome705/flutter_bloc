part of 'newsdata_cubit.dart';

@freezed
class NewsdataState with _$NewsdataState {
  const factory NewsdataState.initial() = _Initial;
  const factory NewsdataState.loading() = _Loading;
  const factory NewsdataState.loaded(NewsApi news) = _Loaded;
  const factory NewsdataState.error() = _Error;
}
