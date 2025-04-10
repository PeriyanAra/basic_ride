part of 'theme_mode_cubit.dart';

@freezed
sealed class ThemeModeState with _$ThemeModeState {
  const factory ThemeModeState.loaded({
    required bool isDark,
  }) = _Loaded;
}
