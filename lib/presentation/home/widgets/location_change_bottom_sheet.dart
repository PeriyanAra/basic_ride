import 'package:basic_ride/presentation/home/widgets/location_card.dart';
import 'package:basic_ride/presentation/home/widgets/location_text_field.dart';
import 'package:basic_ride/presentation/theme/color/basic_ride_color_theme.dart';
import 'package:basic_ride/presentation/theme/sizes/base_ride_border_radii.dart';
import 'package:basic_ride/presentation/theme/sizes/basic_ride_dimensions.dart';
import 'package:flutter/material.dart';

class LocationChangeBottomSheet extends StatefulWidget {
  const LocationChangeBottomSheet({
    required this.isDestination,
    required this.pickupName,
    required this.destinationName,
    super.key,
  });

  final bool isDestination;
  final String pickupName;
  final String destinationName;

  @override
  State<LocationChangeBottomSheet> createState() => _LocationChangeBottomSheetState();
}

class _LocationChangeBottomSheetState extends State<LocationChangeBottomSheet> {
  final pickupController = TextEditingController();
  final destinationController = TextEditingController();

  @override
  void initState() {
    super.initState();

    pickupController.text = widget.pickupName;
    destinationController.text = widget.destinationName;
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = BasicRideColorTheme.of(context);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: colorTheme.backgroundPrimary, borderRadius: BaseRideBorderRadii.topMedium),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(BasicRideDimensions.spacingSmall),
        child: Column(
          spacing: BasicRideDimensions.spacingSmall,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: BasicRideDimensions.spacingSmall,
                vertical: BasicRideDimensions.spacingTiny,
              ),
              decoration: BoxDecoration(
                borderRadius: BaseRideBorderRadii.large,
                color: colorTheme.backgroundSecondary,
                boxShadow: [
                  BoxShadow(
                    color: colorTheme.foregroundPrimary.withValues(alpha: 0.15),
                    blurRadius: 12,
                    spreadRadius: 1,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  LocationTextField(
                    controller: pickupController,
                    icon: Icons.location_on,
                    labelText: 'Pickup',
                    isSelected: !widget.isDestination,
                  ),

                  Divider(thickness: 0.5, color: colorTheme.foregroundTertiary),

                  LocationTextField(
                    controller: destinationController,
                    icon: Icons.flag,
                    labelText: 'Destination',
                    isSelected: widget.isDestination,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(BasicRideDimensions.spacingTiny),
                    child: LocationCard(name: 'Los Angeles', onTap: () {}),
                  );
                },
                separatorBuilder:
                    (BuildContext context, int index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: BasicRideDimensions.spacingTiny),
                      child: Divider(
                        thickness: BasicRideDimensions.dividerExtraThin,
                        color: colorTheme.foregroundTertiary,
                      ),
                    ),
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
