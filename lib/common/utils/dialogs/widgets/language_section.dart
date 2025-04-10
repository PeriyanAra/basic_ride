import 'package:basic_ride/common/cubits/language_cubit/language_cubit.dart';
import 'package:basic_ride/presentation/theme/color/basic_ride_colors_palette.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageSection extends StatelessWidget {
  const LanguageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'language'.tr(),
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        ...List.generate(LanguageCubit.supportedLocales.length, (index) {
          final languageCode =
              LanguageCubit.supportedLocales[index].languageCode;

          return GestureDetector(
            onTap: () {
              context.read<LanguageCubit>().changeLanguage(
                languageCode: languageCode,
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
              child: Column(
                children: [
                  Text(
                    languageCode.tr(),
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color:
                          context.locale.languageCode != languageCode
                              ? BasicRideColorsPalette.gray40
                              : null,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ],
    );
  }
}
