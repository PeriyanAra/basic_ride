import 'package:basic_ride/common/cubits/place/place_cubit.dart';
import 'package:basic_ride/common/enums/address_type.dart';
import 'package:basic_ride/core/di/di_get_it_implementation.dart';
import 'package:basic_ride/presentation/home/widgets/address_change_bottom_sheet.dart';
import 'package:basic_ride/presentation/home/widgets/address_section.dart';
import 'package:basic_ride/presentation/home/widgets/pickers_section.dart';
import 'package:basic_ride/presentation/home/widgets/request_button.dart';
import 'package:basic_ride/presentation/theme/color/basic_ride_color_theme.dart';
import 'package:basic_ride/presentation/theme/sizes/base_ride_border_radii.dart';
import 'package:basic_ride/presentation/theme/sizes/basic_ride_dimensions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = BasicRideColorTheme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: colorTheme.backgroundPrimary,
        borderRadius: BaseRideBorderRadii.topLarge,
      ),
      child: IntrinsicHeight(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<PlaceCubit, PlaceCubitState>(
              builder: (context, state) {
                return AddressSection(
                  icon: Icons.location_on,
                  address:
                      state.pickupPlace?.place?.name ?? 'pickup_address'.tr(),
                  addressType: AddressType.pickup,
                  onTap:
                      () => _onAddressTap(
                        context,
                        type: AddressType.pickup,
                        pickupAddress: state.pickupPlace?.place?.name ?? '',
                        destinationAddress:
                            state.destinationPlace?.place?.name ?? '',
                      ),
                );
              },
            ),
            BlocBuilder<PlaceCubit, PlaceCubitState>(
              builder: (context, state) {
                return AddressSection(
                  icon: Icons.flag,
                  address:
                      state.destinationPlace?.place?.name ??
                      'destination_address'.tr(),
                  addressType: AddressType.destination,
                  onTap:
                      () => _onAddressTap(
                        context,
                        type: AddressType.destination,
                        pickupAddress: state.pickupPlace?.place?.name ?? '',
                        destinationAddress:
                            state.destinationPlace?.place?.name ?? '',
                      ),
                );
              },
            ),
            const SizedBox(height: BasicRideDimensions.spacingTiny),
            const PickersSection(),
            const SizedBox(height: BasicRideDimensions.spacingMedium),
            const RequestButton(),
          ],
        ),
      ),
    );
  }

  void _onAddressTap(
    BuildContext context, {
    required AddressType type,
    required String pickupAddress,
    required String destinationAddress,
  }) {
    di<PlaceCubit>().searchPlaces(
      search: type == AddressType.pickup ? pickupAddress : destinationAddress,
      searchEnum: type,
    );

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder:
          (context) => AddressChangeBottomSheet(
            selectedAddressType: type,
            pickupAddress: pickupAddress,
            destinationAddress: destinationAddress,
          ),
    );
  }
}
