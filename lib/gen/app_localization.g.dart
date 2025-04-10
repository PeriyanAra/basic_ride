// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _de = {
  "passengers_count": "Anzahl der Passagiere",
  "time_of_ride": "Fahrzeit",
  "en": "Englisch",
  "de": "Deutsch",
  "fr": "Französisch",
  "light_mode": "Heller Modus",
  "dark_mode": "Dunkler Modus",
  "language": "Sprache",
  "theme": "Thema",
  "request": "Anfrage"
};
static const Map<String,dynamic> _en = {
  "passengers_count": "Number of passengers",
  "time_of_ride": "Ride time",
  "en": "English",
  "ru": "Russian",
  "de": "German",
  "fr": "French",
  "light_mode": "Light mode",
  "dark_mode": "Dark mode",
  "language": "Language",
  "theme": "Theme",
  "request": "Request"
};
static const Map<String,dynamic> _fr = {
  "passengers_count": "Nombre de passagers",
  "time_of_ride": "Heure de la course",
  "en": "Anglais",
  "de": "Allemand",
  "fr": "Français",
  "light_mode": "Mode lumière",
  "dark_mode": "Mode sombre",
  "language": "Langue",
  "theme": "Thème",
  "request": "Demande"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"de": _de, "en": _en, "fr": _fr};
}
