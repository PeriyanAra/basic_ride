import 'package:basic_ride/presentation/theme/color/basic_ride_color_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class RequestButton extends StatelessWidget {
  const RequestButton({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = TextTheme.of(context);

    return SizedBox(
      height: size.height * 0.10,
      width: double.infinity,
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: size.height * 0.05,
          width: size.width / 2,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: BasicRideColorTheme.of(context).primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            onPressed: () {},
            child: Text(
              'request'.tr(),
              style: textTheme.titleSmall?.copyWith(
                color: BasicRideColorTheme.of(context).backgroundPrimary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
