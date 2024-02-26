part of 'theme_cubit.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial(ThemeData themeData) = _Initial;
  const factory ThemeState.finaltheme( ThemeData themeData) = _FinalTheme;

}
