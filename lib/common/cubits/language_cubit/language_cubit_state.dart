part of 'language_cubit.dart';

@freezed
sealed class LanguageCubitState with _$LanguageCubitState {
  const factory LanguageCubitState.loaded({
    required Locale selectedLanguage,
  }) = LanguageCubitLoadedState;
}
