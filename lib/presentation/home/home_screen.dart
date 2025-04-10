import 'package:basic_ride/common/common.dart';
import 'package:basic_ride/core/di/di_get_it_implementation.dart';
import 'package:basic_ride/presentation/home/cubit/home_cubit.dart';
import 'package:basic_ride/presentation/google_map/map_widget.dart';
import 'package:basic_ride/presentation/home/widgets/custom_bottom_sheet.dart';
import 'package:basic_ride/presentation/home/widgets/settings_section.dart';
import 'package:basic_ride/presentation/theme/sizes/basic_ride_dimensions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: di<HomeCubit>()),
        BlocProvider.value(value: di<PlaceCubit>()),
      ],
      child: const HomeScreenContent(),
    );
  }
}

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LanguageCubit, LanguageCubitState>(
      listener: (context, state) => context.setLocale(state.selectedLanguage),
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              BlocBuilder<PlaceCubit, PlaceCubitState>(
                buildWhen:
                    (previous, current) => current is PlaceCubitLoadedState,
                builder: (context, state) {
                  return MapWidget(
                    pickupLocation:
                        state.pickupPlace?.place?.geometry?.location,
                    destLocation:
                        state.destinationPlace?.place?.geometry?.location,
                  );
                },
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: BasicRideDimensions.spacingSmall,
                ),
                child: SettingsSection(),
              ),
            ],
          ),

          bottomSheet: const CustomBottomSheet(),
        );
      },
    );
  }
}
