import 'package:basic_ride/presentation/theme/color/basic_ride_color_theme.dart';
import 'package:basic_ride/presentation/theme/color/basic_ride_colors_palette.dart';
import 'package:basic_ride/presentation/theme/sizes/base_ride_border_radii.dart';
import 'package:basic_ride/presentation/theme/sizes/basic_ride_dimensions.dart';
import 'package:flutter/material.dart';

class AddressTextField extends StatelessWidget {
  const AddressTextField({
    required this.icon,
    required this.labelText,
    required this.onTap,
    required this.onChanged,
    required this.onClearTap,
    this.controller,
    this.hintText,
    this.focusNode,
    this.isSelected = false,
    super.key,
  });

  final String labelText;
  final IconData icon;
  final String? hintText;
  final bool isSelected;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final VoidCallback onTap;
  final VoidCallback onClearTap;
  final void Function(String text) onChanged;

  @override
  Widget build(BuildContext context) {
    final colorTheme = BasicRideColorTheme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Row(
        spacing: BasicRideDimensions.spacingSmall,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(BasicRideDimensions.spacingSmall),
            decoration:
                isSelected
                    ? BoxDecoration(
                      color: colorTheme.primary,
                      borderRadius: BaseRideBorderRadii.medium,
                    )
                    : null,
            child: Icon(icon, color: colorTheme.foregroundPrimary),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  labelText,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: BasicRideColorsPalette.gray40,
                  ),
                ),
                const SizedBox(height: BasicRideDimensions.spacingTiny),
                TextField(
                  onTap: onTap,
                  focusNode: focusNode,
                  controller: controller,
                  cursorHeight: BasicRideDimensions.heightMedium,
                  onChanged: onChanged,
                  decoration: InputDecoration(
                    hintText: hintText,
                    isDense: true,
                    border: InputBorder.none,
                    suffixIconConstraints: const BoxConstraints(
                      maxHeight: BasicRideDimensions.heightLarge,
                    ),
                    suffixIcon:
                        controller?.text.isNotEmpty == true && isSelected
                            ? GestureDetector(
                              onTap: onClearTap,
                              child: Icon(
                                Icons.clear,
                                color: colorTheme.foregroundPrimary,
                              ),
                            )
                            : null,
                  ),
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
