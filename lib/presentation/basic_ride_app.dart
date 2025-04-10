import 'package:basic_ride/app/app_theme_mode/app_theme_mode.dart';
import 'package:basic_ride/presentation/home/home_screen.dart';
import 'package:basic_ride/presentation/theme/basic_ride_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BasicRideApp extends StatelessWidget {
  const BasicRideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BasicRide',
      debugShowCheckedModeBanner: false,
      theme: BasicRideTheme.getTheme(mode: ThemeMode.light),
      darkTheme: BasicRideTheme.getTheme(mode: ThemeMode.dark),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      themeMode: context.watch<AppThemeMode>().themeMode,
      home: const HomeScreen(),
    );
  }
}
