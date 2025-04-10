import 'package:basic_ride/common/enums/address_type.dart';
import 'package:basic_ride/presentation/theme/color/basic_ride_color_theme.dart';
import 'package:basic_ride/presentation/theme/sizes/basic_ride_dimensions.dart';
import 'package:flutter/material.dart';

class AddressSection extends StatelessWidget {
  const AddressSection({
    required this.address,
    required this.icon,
    required this.addressType,
    required this.onTap,
    super.key,
  });

  final String address;
  final IconData icon;
  final AddressType addressType;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorTheme = BasicRideColorTheme.of(context);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          left: BasicRideDimensions.spacingMedium,
          right: BasicRideDimensions.spacingSmall,
          top: BasicRideDimensions.spacingSmall,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: BasicRideDimensions.spacingMedium,
          children: [
            Icon(
              icon,
              size: BasicRideDimensions.iconLarge,
              color: BasicRideColorTheme.of(context).backgroundTertiary,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(address, style: TextTheme.of(context).titleMedium),
                  const SizedBox(height: BasicRideDimensions.spacingSmall),
                  Divider(
                    thickness: 0.5,
                    color: colorTheme.backgroundTertiary.withAlpha(50),
                  ),
                ],
              ),
            ),
            const SizedBox(width: BasicRideDimensions.spacingTiny),
          ],
        ),
      ),
    );
  }
}
