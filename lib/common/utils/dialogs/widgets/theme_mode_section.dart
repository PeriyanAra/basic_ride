import 'package:basic_ride/app/app_theme_mode/app_theme_mode.dart';
import 'package:basic_ride/presentation/theme/color/basic_ride_colors_palette.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeModeSection extends StatefulWidget {
  const ThemeModeSection({super.key});

  @override
  State<ThemeModeSection> createState() => _ThemeModeSectionState();
}

class _ThemeModeSectionState extends State<ThemeModeSection> {
  @override
  Widget build(BuildContext context) {
    final appTheme = context.read<AppThemeMode>();

    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('theme'.tr(), style: Theme.of(context).textTheme.headlineMedium),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
            child: GestureDetector(
              onTap: () {
                if (appTheme.themeMode != ThemeMode.light) {
                  appTheme.updateThemeMode(ThemeMode.light);
                }
                context.read<AppThemeMode>().updateThemeMode(ThemeMode.light);
              },
              child: Text(
                'light_mode'.tr(),
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color:
                      appTheme.themeMode != ThemeMode.light
                          ? BasicRideColorsPalette.gray40
                          : null,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
            child: GestureDetector(
              onTap: () {
                if (appTheme.themeMode != ThemeMode.dark) {
                  appTheme.updateThemeMode(ThemeMode.dark);
                }
              },
              child: Text(
                'dark_mode'.tr(),
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color:
                      appTheme.themeMode != ThemeMode.dark
                          ? BasicRideColorsPalette.gray40
                          : null,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
