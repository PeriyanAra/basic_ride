import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvService {
  EnvService._() {
    _initialize();
  }

  static EnvService? _instance;

  factory EnvService() => _instance ??= EnvService._();

  Future<void> _initialize() async {
    await dotenv.load();
  }

  String? get googleMapKey => dotenv.get('GOOGLE_MAP_KEY', fallback: null);
}
