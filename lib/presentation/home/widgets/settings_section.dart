import 'package:basic_ride/common/utils/dialogs/settings_dialog.dart';
import 'package:basic_ride/presentation/theme/color/basic_ride_color_theme.dart';
import 'package:flutter/material.dart';

class SettingsSection extends StatelessWidget {
  const SettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: BasicRideColorTheme.of(context).primary,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: () {
            showDialog<SettingsDialog>(
              context: context,
              builder: (context) {
                return const SettingsDialog();
              },
            );
          },
          icon: Icon(
            Icons.settings,
            color: BasicRideColorTheme.of(context).backgroundPrimary,
          ),
        ),
      ),
    );
  }
}
