import 'dart:async';
import 'dart:developer' as dev;

import 'package:basic_ride/common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:basic_ride/app/app_theme_mode/app_theme_mode.dart';
import 'package:basic_ride/app/app_theme_mode/app_theme_mode_settings.dart';
import 'package:basic_ride/app/restart_widget.dart';
import 'package:basic_ride/core/di/di_get_it_implementation.dart';
import 'package:basic_ride/core/di/register_app_dependencies.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

Future<void> mainShared(Widget appProvider) async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);

      await EasyLocalization.ensureInitialized();
      FlutterError.onError = (FlutterErrorDetails errorDetails) {
        Zone.current.handleUncaughtError(
          errorDetails.exception,
          errorDetails.stack ?? StackTrace.empty,
        );
      };

      final di = DiGetItImplementation();
      await registerAppDependencies(di);
      final permission = await GeolocationService().saveCurrentPosition();

      switch (permission) {
        case GeolocationPermission.locationServiceDisable:
          ToastHelper.showToast(text: 'enable_location_service'.tr());
          break;
        case GeolocationPermission.deniedForever ||
            GeolocationPermission.denied:
          ToastHelper.showToast(text: 'enable_location_permission'.tr());

          break;
        default:
          break;
      }

      runApp(
        BlocProvider.value(
          value: di<LanguageCubit>(),
          child: EasyLocalization(
            supportedLocales: LanguageCubit.supportedLocales,
            path: 'assets/translations',
            fallbackLocale: const Locale('en'),
            saveLocale: true,
            child: RestartWidget(
              child: ChangeNotifierProvider.value(
                value: AppThemeMode(di<AppThemeModeSettings>().themeMode),
                child: appProvider,
              ),
              onBeforeRestart: () async {
                await di.reset();
                await registerAppDependencies(di);
              },
            ),
          ),
        ),
      );
    },
    (error, StackTrace stackTrace) {
      dev.log('An unhandled error!', error: error, stackTrace: stackTrace);
    },
  );
}
