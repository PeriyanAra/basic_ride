import 'package:flutter/material.dart';
import 'package:basic_ride/presentation/theme/color/basic_ride_color.dart';

const _halfT = 0.5;

@immutable
class BasicRideColorTheme extends ThemeExtension<BasicRideColorTheme> {
  const BasicRideColorTheme({
    required this.brightness,
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.foregroundPrimary,
    required this.foregroundSecondary,
    required this.foregroundTertiary,
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.backgroundTertiary,
  });

  final Brightness brightness;

  final BasicRideColor primary;
  final BasicRideColor secondary;
  final BasicRideColor tertiary;

  final BasicRideColor foregroundPrimary;
  final BasicRideColor foregroundSecondary;
  final BasicRideColor foregroundTertiary;

  final BasicRideColor backgroundPrimary;
  final BasicRideColor backgroundSecondary;
  final BasicRideColor backgroundTertiary;

  @override
  int get hashCode => Object.hash(
        primary,
        secondary,
        tertiary,
        foregroundPrimary,
        foregroundSecondary,
        foregroundTertiary,
        backgroundPrimary,
        backgroundSecondary,
        backgroundTertiary,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BasicRideColorTheme &&
          runtimeType == other.runtimeType &&
          primary == other.primary &&
          secondary == other.secondary &&
          tertiary == other.tertiary &&
          foregroundPrimary == other.foregroundPrimary &&
          foregroundSecondary == other.foregroundSecondary &&
          foregroundTertiary == other.foregroundTertiary &&
          backgroundPrimary == other.backgroundPrimary &&
          backgroundSecondary == other.backgroundSecondary &&
          backgroundTertiary == other.backgroundTertiary;

  @override
  BasicRideColorTheme copyWith({
    BasicRideColor? primary,
    BasicRideColor? secondary,
  }) {
    return BasicRideColorTheme(
      brightness: brightness,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      tertiary: tertiary,
      foregroundPrimary: foregroundPrimary,
      foregroundSecondary: foregroundSecondary,
      foregroundTertiary: foregroundTertiary,
      backgroundPrimary: backgroundPrimary,
      backgroundSecondary: backgroundSecondary,
      backgroundTertiary: backgroundTertiary,
    );
  }

  @override
  ThemeExtension<BasicRideColorTheme> lerp(
    covariant ThemeExtension<BasicRideColorTheme>? other,
    double t,
  ) {
    if (other is! BasicRideColorTheme) {
      return this;
    }

    return BasicRideColorTheme(
      brightness: t < _halfT ? brightness : other.brightness,
      primary: primary.lerp(other.primary, t),
      secondary: secondary.lerp(other.secondary, t),
      tertiary: tertiary.lerp(other.tertiary, t),
      foregroundPrimary: foregroundPrimary.lerp(other.foregroundPrimary, t),
      foregroundSecondary:
          foregroundSecondary.lerp(other.foregroundSecondary, t),
      foregroundTertiary: foregroundTertiary.lerp(other.foregroundTertiary, t),
      backgroundPrimary: backgroundPrimary.lerp(other.backgroundPrimary, t),
      backgroundSecondary:
          backgroundSecondary.lerp(other.backgroundSecondary, t),
      backgroundTertiary: backgroundTertiary.lerp(other.backgroundTertiary, t),
    );
  }

  static BasicRideColorTheme of(BuildContext context) {
    return Theme.of(context).extension<BasicRideColorTheme>()!;
  }
}
