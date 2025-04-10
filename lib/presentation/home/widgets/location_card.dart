import 'package:basic_ride/presentation/theme/color/basic_ride_color_theme.dart';
import 'package:basic_ride/presentation/theme/color/basic_ride_colors_palette.dart';
import 'package:basic_ride/presentation/theme/sizes/base_ride_border_radii.dart';
import 'package:basic_ride/presentation/theme/sizes/basic_ride_dimensions.dart';
import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({super.key, required this.name, required this.onTap});

  final String name;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorTheme = BasicRideColorTheme.of(context);

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        decoration: BoxDecoration(
          color: colorTheme.backgroundSecondary,
          borderRadius: BaseRideBorderRadii.medium,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: BasicRideDimensions.spacingSmall,
          horizontal: BasicRideDimensions.spacingTiny,
        ),
        child: Row(
          spacing: BasicRideDimensions.spacingSmall,
          children: [
            const Icon(Icons.location_on, color: BasicRideColorsPalette.gray40),
            Expanded(child: Text(name)),
          ],
        ),
      ),
    );
  }
}
