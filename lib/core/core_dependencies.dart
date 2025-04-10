import 'package:basic_ride/core/core.dart';
import 'package:basic_ride/core/di/dependencies.dart';
import 'package:basic_ride/core/di/di.dart';

class CoreDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    di
      ..registerLazySingleton<CustomJsonDecoder>(() => CustomJsonDecoder([]))
      ..registerLazySingleton<JsonStringConverter>(
          () => JsonStringConverter(jsonDecoder: di()));
  }
}
