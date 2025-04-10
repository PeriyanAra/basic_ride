import 'package:basic_ride/presentation/theme/color/basic_ride_color.dart';
import 'package:basic_ride/presentation/theme/color/basic_ride_color_theme.dart';
import 'package:basic_ride/presentation/theme/color/basic_ride_colors_palette.dart';
import 'package:basic_ride/presentation/theme/sizes/basic_ride_font_sizes.dart';
import 'package:flutter/material.dart';

class BasicRideTheme {
  static ThemeData getTheme({required ThemeMode mode}) {
    final colorTheme =
        mode == ThemeMode.light ? _lightColorTheme() : _darkColorTheme();

    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: colorTheme.primary),
      applyElevationOverlayColor: false,
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      scaffoldBackgroundColor: colorTheme.backgroundPrimary,
      extensions: <ThemeExtension<dynamic>>[colorTheme],
      datePickerTheme: DatePickerThemeData(
        backgroundColor: colorTheme.backgroundSecondary,
        headerForegroundColor: colorTheme.foregroundPrimary,
        rangePickerBackgroundColor: colorTheme.backgroundSecondary,
        rangePickerHeaderForegroundColor: colorTheme.foregroundPrimary,
        rangeSelectionBackgroundColor: colorTheme.primary,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorTheme.backgroundPrimary,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: BasicRideFontSizes.displayLarge,
          fontWeight: FontWeight.w400,
          color: colorTheme.foregroundPrimary,
        ),
        displayMedium: TextStyle(
          fontSize: BasicRideFontSizes.displayMedium,
          fontWeight: FontWeight.w400,
          color: colorTheme.foregroundPrimary,
        ),
        displaySmall: TextStyle(
          fontSize: BasicRideFontSizes.displaySmall,
          fontWeight: FontWeight.w400,
          color: colorTheme.foregroundPrimary,
        ),
        headlineLarge: TextStyle(
          fontSize: BasicRideFontSizes.headlineLarge,
          fontWeight: FontWeight.w400,
          color: colorTheme.foregroundPrimary,
        ),
        headlineMedium: TextStyle(
          fontSize: BasicRideFontSizes.headlineMedium,
          fontWeight: FontWeight.w400,
          color: colorTheme.foregroundPrimary,
        ),
        headlineSmall: TextStyle(
          fontSize: BasicRideFontSizes.headlineSmall,
          fontWeight: FontWeight.w400,
          color: colorTheme.foregroundPrimary,
        ),
        titleLarge: TextStyle(
          fontSize: BasicRideFontSizes.titleLarge,
          fontWeight: FontWeight.w500,
          color: colorTheme.foregroundPrimary,
        ),
        titleMedium: TextStyle(
          fontSize: BasicRideFontSizes.titleMedium,
          fontWeight: FontWeight.w500,
          color: colorTheme.foregroundPrimary,
        ),
        titleSmall: TextStyle(
          fontSize: BasicRideFontSizes.titleSmall,
          fontWeight: FontWeight.w500,
          color: colorTheme.foregroundPrimary,
        ),
        bodyLarge: TextStyle(
          fontSize: BasicRideFontSizes.bodyLarge,
          fontWeight: FontWeight.w400,
          color: colorTheme.foregroundPrimary,
        ),
        bodyMedium: TextStyle(
          fontSize: BasicRideFontSizes.bodyMedium,
          fontWeight: FontWeight.w400,
          color: colorTheme.foregroundPrimary,
        ),
        bodySmall: TextStyle(
          fontSize: BasicRideFontSizes.bodySmall,
          fontWeight: FontWeight.w400,
          color: colorTheme.foregroundPrimary,
        ),
        labelLarge: TextStyle(
          fontSize: BasicRideFontSizes.labelLarge,
          fontWeight: FontWeight.w500,
          color: colorTheme.foregroundPrimary,
        ),
        labelMedium: TextStyle(
          fontSize: BasicRideFontSizes.labelMedium,
          fontWeight: FontWeight.w500,
          color: colorTheme.foregroundPrimary,
        ),
        labelSmall: TextStyle(
          fontSize: BasicRideFontSizes.labelSmall,
          fontWeight: FontWeight.w500,
          color: colorTheme.foregroundPrimary,
        ),
      ),
    );
  }

  static BasicRideColorTheme _lightColorTheme() {
    return _baseColorTheme(
      brightness: Brightness.light,
      foregroundPrimary: BasicRideColor(
        BasicRideColorsPalette.black.toARGB32(),
        pressed: BasicRideColorsPalette.gray90,
      ),
      foregroundSecondary: BasicRideColor(
        BasicRideColorsPalette.gray70.toARGB32(),
        disabled: BasicRideColorsPalette.black,
      ),
      foregroundTertiary: BasicRideColor(
        BasicRideColorsPalette.light.toARGB32(),
        disabled: BasicRideColorsPalette.gray10,
      ),
      backgroundPrimary: BasicRideColor(
        BasicRideColorsPalette.white.toARGB32(),
        pressed: BasicRideColorsPalette.gray10,
      ),
      backgroundSecondary: BasicRideColor(
        BasicRideColorsPalette.white.toARGB32(),
        pressed: BasicRideColorsPalette.light,
      ),
      backgroundTertiary: BasicRideColor(
        BasicRideColorsPalette.black.toARGB32(),
      ),
    );
  }

  static BasicRideColorTheme _darkColorTheme() {
    return _baseColorTheme(
      brightness: Brightness.dark,
      foregroundPrimary: BasicRideColor(
        BasicRideColorsPalette.white.toARGB32(),
      ),
      foregroundSecondary: BasicRideColor(
        BasicRideColorsPalette.gray40.toARGB32(),
      ),
      foregroundTertiary: BasicRideColor(
        BasicRideColorsPalette.gray90.toARGB32(),
      ),
      backgroundPrimary: BasicRideColor(
        BasicRideColorsPalette.black.toARGB32(),
      ),
      backgroundSecondary: BasicRideColor(
        BasicRideColorsPalette.gray90.toARGB32(),
      ),
      backgroundTertiary: BasicRideColor(
        BasicRideColorsPalette.gray40.toARGB32(),
      ),
    );
  }

  /////////////////////////////////////////////////////////////////
  /************************* BASE ********************************/
  /////////////////////////////////////////////////////////////////

  static BasicRideColorTheme _baseColorTheme({
    required Brightness brightness,
    required BasicRideColor foregroundPrimary,
    required BasicRideColor foregroundSecondary,
    required BasicRideColor foregroundTertiary,
    required BasicRideColor backgroundPrimary,
    required BasicRideColor backgroundSecondary,
    required BasicRideColor backgroundTertiary,
  }) {
    return BasicRideColorTheme(
      brightness: brightness,
      primary: BasicRideColor(BasicRideColorsPalette.green60.toARGB32()),
      secondary: BasicRideColor(BasicRideColorsPalette.green70.toARGB32()),
      tertiary: BasicRideColor(BasicRideColorsPalette.blue60.toARGB32()),
      foregroundPrimary: foregroundPrimary,
      foregroundSecondary: foregroundSecondary,
      foregroundTertiary: foregroundTertiary,
      backgroundPrimary: backgroundPrimary,
      backgroundSecondary: backgroundSecondary,
      backgroundTertiary: backgroundTertiary,
    );
  }

  static BasicRideTheme of(BuildContext context) {
    return Theme.of(context).extension<BasicRideTheme>()!;
  }
}
