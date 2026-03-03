import 'package:event_planning/core/utils/theme/app_colors.dart';
import 'package:event_planning/core/utils/theme/app_styles.dart';
import 'package:event_planning/providers/app_localization_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../core/localization/app_localizations.dart';

class LanguageModalBottomSheet extends StatefulWidget {
  const LanguageModalBottomSheet({super.key});

  @override
  State<LanguageModalBottomSheet> createState() =>
      _LanguageModalBottomSheetState();
}

class _LanguageModalBottomSheetState extends State<LanguageModalBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var appLanguageProvider = Provider.of<AppLocalizationProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      child: Column(
        children: [
          appLanguageProvider.local == 'en'
              ? Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          AppLocalizations.of(context)!.english,
                          style: AppStyles.bold16Primary,
                        ),
                        Spacer(),
                        Icon(
                          Icons.check_circle_outline_outlined,
                          size: 30,
                          color: AppColors.primaryLight,
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        appLanguageProvider.changeLanguage('ar');
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.arabic,
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          Spacer(),
                          Icon(
                            Icons.radio_button_unchecked_outlined,
                            size: 30,
                            color: AppColors.primaryLight,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          AppLocalizations.of(context)!.arabic,
                          style: AppStyles.bold16Primary,
                        ),
                        Spacer(),
                        Icon(
                          Icons.check_circle_outline_outlined,
                          size: 30,
                          color: AppColors.primaryLight,
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        appLanguageProvider.changeLanguage('en');
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.english,
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          Spacer(),
                          Icon(
                            Icons.radio_button_unchecked_outlined,
                            size: 30,
                            color: AppColors.primaryLight,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
