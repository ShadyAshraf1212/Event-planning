import 'package:event_planning/core/utils/theme/app_colors.dart';
import 'package:event_planning/core/utils/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../core/localization/app_localizations.dart';
import '../../../providers/app_theme_provider.dart';

class ThemeModalBottomSheet extends StatefulWidget {
  const ThemeModalBottomSheet({super.key});

  @override
  State<ThemeModalBottomSheet> createState() => _ThemeModalBottomSheetState();
}

class _ThemeModalBottomSheetState extends State<ThemeModalBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var appThemeProvider = Provider.of<AppThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      child: Column(
        children: [
          appThemeProvider.themeMode == ThemeMode.light
              ? Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          AppLocalizations.of(context)!.light,
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
                        appThemeProvider.changeTheme(ThemeMode.dark);
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.dark,
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
                          AppLocalizations.of(context)!.dark,
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
                        appThemeProvider.changeTheme(ThemeMode.light);
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.light,
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
