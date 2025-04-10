import 'package:basic_ride/presentation/theme/color/basic_ride_color_theme.dart';
import 'package:basic_ride/presentation/theme/color/basic_ride_colors_palette.dart';
import 'package:basic_ride/presentation/theme/sizes/base_ride_border_radii.dart';
import 'package:basic_ride/presentation/theme/sizes/basic_ride_dimensions.dart';
import 'package:flutter/material.dart';

class LocationTextField extends StatelessWidget {
  const LocationTextField({
    required this.icon,
    required this.labelText,
    this.controller,
    this.hintText,
    this.isSelected = false,
    super.key,
  });

  final String labelText;
  final IconData icon;
  final String? hintText;
  final bool isSelected;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    final colorTheme = BasicRideColorTheme.of(context);

    return Row(
      spacing: BasicRideDimensions.spacingTiny,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(BasicRideDimensions.spacingTiny),
          decoration:
              isSelected ? BoxDecoration(color: colorTheme.primary, borderRadius: BaseRideBorderRadii.medium) : null,
          child: Icon(icon, color: BasicRideColorTheme.of(context).backgroundTertiary),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                labelText,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(color: BasicRideColorsPalette.gray40),
              ),
              const SizedBox(height: BasicRideDimensions.spacingExtraTiny),
              TextField(
                controller: controller,
                cursorHeight: BasicRideDimensions.heightMedium,
                decoration: InputDecoration(
                  hintText: hintText,
                  isDense: true,
                  border: InputBorder.none,
                  suffixIconConstraints: const BoxConstraints(maxHeight: BasicRideDimensions.heightLarge),
                  suffixIcon:
                      controller?.text.isNotEmpty == true && isSelected
                          ? GestureDetector(onTap: controller?.clear, child: const Icon(Icons.clear))
                          : null,
                ),
                style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
