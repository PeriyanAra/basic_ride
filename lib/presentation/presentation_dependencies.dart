import 'package:basic_ride/common/common.dart';
import 'package:basic_ride/core/di/dependencies.dart';
import 'package:basic_ride/core/di/di.dart';
import 'package:basic_ride/presentation/google_map/google_map_cubit/google_map_cubit.dart';
import 'package:basic_ride/presentation/home/cubit/home_cubit.dart';

class PresentationDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    di
      ..registerLazySingleton<ThemeModeCubit>(() => ThemeModeCubit(),)
      ..registerLazySingleton<LanguageCubit>(() => LanguageCubit())
      ..registerLazySingleton<HomeCubit>(() => HomeCubit())
      ..registerSingleton<EnvService>(EnvService())
      ..registerLazySingleton<GoogleMapCubit>(() => GoogleMapCubit())
      ..registerLazySingleton<PlaceCubit>(() => PlaceCubit());
  }
}
