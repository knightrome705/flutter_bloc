part of 'theme_cubit.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial({required ThemeData themeData}) = _Initial;
  const factory ThemeState.finaltheme({required ThemeData themeData}) = _FinalTheme;

}
