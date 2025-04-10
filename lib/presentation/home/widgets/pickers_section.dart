import 'package:basic_ride/common/common.dart';
import 'package:basic_ride/presentation/home/cubit/home_cubit.dart';
import 'package:basic_ride/presentation/theme/color/basic_ride_color_theme.dart';
import 'package:basic_ride/presentation/theme/sizes/base_ride_border_radii.dart';
import 'package:basic_ride/presentation/theme/sizes/basic_ride_dimensions.dart';
import 'package:basic_ride/presentation/theme/sizes/basic_ride_font_sizes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PickersSection extends StatelessWidget {
  const PickersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: BasicRideDimensions.spacingSmall,
      ),
      child: Column(
        children: [
          _PassengersPickers(),
          const SizedBox(height: BasicRideDimensions.spacingSmall),
          _DateTimePickerSection(),
        ],
      ),
    );
  }
}

class _PassengersPickers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorTheme = BasicRideColorTheme.of(context);

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Row(
          children: [
            Text(
              'passengers_count'.tr(),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Spacer(flex: 4),
            Container(
              height: BasicRideDimensions.cardHeightMedium,
              width: BasicRideDimensions.cardWidthExtraLarge,
              decoration: BoxDecoration(
                border: Border.all(color: colorTheme.foregroundSecondary),
                borderRadius: BaseRideBorderRadii.medium,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: BasicRideDimensions.paddingExtraSmall,
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const _PassengersPicker(
                    valueChangeType: ValueChangeTypes.decrement,
                  ),
                  const SizedBox(width: BasicRideDimensions.spacingTiny),
                  Text(
                    state.passengersCount.toString(),
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: BasicRideFontSizes.headlineSmall,
                    ),
                  ),
                  const SizedBox(width: BasicRideDimensions.spacingTiny),
                  const _PassengersPicker(
                    valueChangeType: ValueChangeTypes.increment,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _PassengersPicker extends StatelessWidget {
  const _PassengersPicker({required this.valueChangeType});

  final ValueChangeTypes valueChangeType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: BasicRideDimensions.paddingExtraSmall,
      ),
      child: GestureDetector(
        onTap: () {
          context.read<HomeCubit>().changePassengersCount(valueChangeType);
        },
        child: Align(
          child: Text(
            valueChangeType == ValueChangeTypes.increment ? '+' : '-',
            style: Theme.of(
              context,
            ).textTheme.displayLarge!.copyWith(fontSize: 25),
          ),
        ),
      ),
    );
  }
}

class _DateTimePickerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Row(
          children: [
            Text(
              'time_of_ride'.tr(),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Spacer(flex: 7),
            _DateTimePicker(
              onTap:
                  () => _onDatePickerTap(
                    context,
                    onDaySelected:
                        (date) => context.read<HomeCubit>().setStartDate(
                          DateFormat('dd/MM').format(date),
                        ),
                  ),
              selectedDate:
                  state.startDate ?? DateFormat('dd/MM').format(DateTime.now()),
              icon: Icons.calendar_month_outlined,
            ),
            const SizedBox(width: BasicRideDimensions.spacingTiny),
            Flexible(
              child: Divider(
                thickness: BasicRideDimensions.heightTiny,
                color: BasicRideColorTheme.of(context).foregroundSecondary,
              ),
            ),
            const SizedBox(width: BasicRideDimensions.spacingTiny),
            _DateTimePicker(
              onTap:
                  () => _onDatePickerTap(
                    context,
                    onDaySelected:
                        (date) => context.read<HomeCubit>().setEndDate(
                          DateFormat('dd/MM').format(date),
                        ),
                  ),
              selectedDate:
                  state.endDate ?? DateFormat('dd/MM').format(DateTime.now()),
              icon: Icons.calendar_month_outlined,
            ),
          ],
        );
      },
    );
  }

  Future<void> _onDatePickerTap(
    BuildContext context, {
    required ValueSetter<DateTime> onDaySelected,
  }) async {
    final brightness = BasicRideColorTheme.of(context).brightness;
    final colorTheme = BasicRideColorTheme.of(context);

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData(brightness: brightness).copyWith(
            colorScheme: ColorScheme.fromSeed(
              seedColor: colorTheme.primary,
              brightness: brightness,
            ),
            buttonTheme: const ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked == null || !context.mounted) return;
    onDaySelected(picked);
  }
}

class _DateTimePicker extends StatelessWidget {
  const _DateTimePicker({
    required this.onTap,
    required this.icon,
    required this.selectedDate,
  });

  final String selectedDate;
  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final colorTheme = BasicRideColorTheme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: BasicRideDimensions.paddingExtraSmall,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: colorTheme.foregroundSecondary),
          borderRadius: BaseRideBorderRadii.medium,
        ),
        child: Row(
          children: [
            Container(
              height: BasicRideDimensions.cardHeightMedium,
              width: BasicRideDimensions.cardWidthLarge,
              alignment: Alignment.center,
              child: FittedBox(
                child: Text(
                  selectedDate,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: BasicRideFontSizes.headlineSmall,
                  ),
                ),
              ),
            ),
            Icon(icon, size: 25, color: colorTheme.foregroundPrimary),
          ],
        ),
      ),
    );
  }
}
