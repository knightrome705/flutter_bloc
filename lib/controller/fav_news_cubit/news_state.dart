part of 'news_cubit.dart';


@freezed
class NewsState with _$NewsState {
  const factory NewsState.initial() = _Initial;
  const factory NewsState.loading() = _Loading;
  const factory NewsState.loaded(NewsApi news) = _Loaded;
  const factory NewsState.error() = _Error;
}