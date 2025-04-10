import 'package:basic_ride/common/utils/dialogs/widgets/language_section.dart';
import 'package:basic_ride/common/utils/dialogs/widgets/theme_mode_section.dart';
import 'package:basic_ride/presentation/theme/color/basic_ride_color_theme.dart';
import 'package:flutter/material.dart';

class SettingsDialog extends StatelessWidget {
  const SettingsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: BasicRideColorTheme.of(context).backgroundPrimary,
      content: const SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [LanguageSection(), ThemeModeSection()],
        ),
      ),
    );
  }
}
