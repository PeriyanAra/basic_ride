import 'package:basic_ride/common/cubits/cubits.dart';
import 'package:basic_ride/common/enums/address_type.dart';
import 'package:basic_ride/common/helper/helper.dart';
import 'package:basic_ride/common/view_model/place_search_view_model.dart';
import 'package:basic_ride/core/di/di_get_it_implementation.dart';
import 'package:basic_ride/presentation/home/widgets/location_card.dart';
import 'package:basic_ride/presentation/home/widgets/address_text_field.dart';
import 'package:basic_ride/presentation/theme/color/basic_ride_color_theme.dart';
import 'package:basic_ride/presentation/theme/sizes/base_ride_border_radii.dart';
import 'package:basic_ride/presentation/theme/sizes/basic_ride_dimensions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressChangeBottomSheet extends StatelessWidget {
  const AddressChangeBottomSheet({
    required this.selectedAddressType,
    required this.pickupAddress,
    required this.destinationAddress,
    super.key,
  });

  final AddressType selectedAddressType;
  final String pickupAddress;
  final String destinationAddress;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: di<PlaceCubit>(),
      child: AddressChangeBottomSheetContent(
        selectedAddressType: selectedAddressType,
        pickupAddress: pickupAddress,
        destinationAddress: destinationAddress,
      ),
    );
  }
}

class AddressChangeBottomSheetContent extends StatefulWidget {
  const AddressChangeBottomSheetContent({
    required this.selectedAddressType,
    required this.pickupAddress,
    required this.destinationAddress,
    super.key,
  });

  final AddressType selectedAddressType;
  final String pickupAddress;
  final String destinationAddress;

  @override
  State<AddressChangeBottomSheetContent> createState() =>
      _AddressChangeBottomSheetContentState();
}

class _AddressChangeBottomSheetContentState
    extends State<AddressChangeBottomSheetContent> {
  final _pickupController = TextEditingController();
  final _destinationController = TextEditingController();

  final FocusNode _pickupFocusNode = FocusNode();
  final FocusNode _destinationFocusNode = FocusNode();

  late AddressType _selectedAddressType;

  @override
  void initState() {
    super.initState();

    _pickupController.text = widget.pickupAddress;
    _destinationController.text = widget.destinationAddress;
    _selectedAddressType = widget.selectedAddressType;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_selectedAddressType == AddressType.pickup) {
        FocusScope.of(context).requestFocus(_pickupFocusNode);
      } else {
        FocusScope.of(context).requestFocus(_destinationFocusNode);
      }
    });
  }

  @override
  void dispose() {
    _pickupController.dispose();
    _destinationController.dispose();
    _pickupFocusNode.dispose();
    _destinationFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = BasicRideColorTheme.of(context);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: colorTheme.backgroundPrimary,
        borderRadius: BaseRideBorderRadii.topMedium,
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(BasicRideDimensions.spacingMedium),
        child: Column(
          spacing: BasicRideDimensions.spacingMedium,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: BasicRideDimensions.spacingMedium,
                vertical: BasicRideDimensions.spacingSmall,
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
                  AddressTextField(
                    onClearTap: () {
                      _pickupController.clear();
                      setState(() {});
                    },
                    onChanged: _onChanged,
                    onTap: () {
                      setState(() {
                        _selectedAddressType = AddressType.pickup;
                        FocusScope.of(context).requestFocus(_pickupFocusNode);
                      });
                    },
                    controller: _pickupController,
                    focusNode: _pickupFocusNode,
                    icon: Icons.location_on,
                    labelText: AddressType.pickup.key.tr(),
                    isSelected: _selectedAddressType == AddressType.pickup,
                  ),
                  Divider(thickness: 0.5, color: colorTheme.foregroundTertiary),
                  AddressTextField(
                    onClearTap: () {
                      _destinationController.clear();
                      setState(() {});
                    },
                    onChanged: _onChanged,
                    onTap: () {
                      setState(() {
                        _selectedAddressType = AddressType.destination;
                        FocusScope.of(
                          context,
                        ).requestFocus(_destinationFocusNode);
                      });
                    },
                    controller: _destinationController,
                    focusNode: _destinationFocusNode,
                    icon: Icons.flag,
                    labelText: AddressType.destination.key.tr(),
                    isSelected: _selectedAddressType == AddressType.destination,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: BlocConsumer<PlaceCubit, PlaceCubitState>(
                listenWhen:
                    (previous, current) => current is PlaceCubitErrorState,
                listener: (context, state) {
                  ToastHelper.showToast(text: 'place_fetch_failed'.tr());
                },
                builder: (context, state) {
                  final searchResults =
                      _selectedAddressType == AddressType.pickup
                          ? state.pickupPlace?.placeSearchResults
                          : state.destinationPlace?.placeSearchResults;

                  if (state is PlaceCubitLoadingState) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: colorTheme.foregroundPrimary,
                      ),
                    );
                  }

                  if (searchResults == null || searchResults.isEmpty == true) {
                    return Center(child: Text('address_no_found_message'.tr()));
                  }

                  return ListView.separated(
                    shrinkWrap: true,
                    itemCount: searchResults.length,
                    itemBuilder: (context, index) {
                      return LocationCard(
                        name: searchResults[index].description,
                        onTap: () => _onAddressCardTap(searchResults[index]),
                      );
                    },
                    separatorBuilder:
                        (_, _) => Divider(
                          thickness: 0.5,
                          color: colorTheme.foregroundTertiary,
                        ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onChanged(String text) {
    di<PlaceCubit>().searchPlaces(
      search: text,
      searchEnum: _selectedAddressType,
    );

    setState(() {});
  }

  void _onAddressCardTap(PlaceSearchViewModel place) {
    if (_selectedAddressType == AddressType.pickup) {
      _pickupController.text = place.description;
    } else {
      _destinationController.text = place.description;
    }

    di<PlaceCubit>().getPlaceById(
      placeId: place.placeId,
      searchEnum: _selectedAddressType,
    );
  }
}
