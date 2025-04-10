import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_cubit.freezed.dart';
part 'language_cubit_state.dart';

class LanguageCubit extends Cubit<LanguageCubitState> {
  static const supportedLocales = [Locale('en'), Locale('fr'), Locale('de')];

  LanguageCubit()
    : super(const LanguageCubitState.loaded(selectedLanguage: Locale('en')));

  void changeLanguage({required String languageCode}) {
    emit(LanguageCubitState.loaded(selectedLanguage: Locale(languageCode)));
  }
}
