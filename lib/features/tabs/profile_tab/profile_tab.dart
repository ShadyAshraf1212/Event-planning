import 'package:event_planning/core/utils/theme/app_assets.dart';
import 'package:event_planning/core/utils/theme/app_colors.dart';
import 'package:event_planning/core/utils/theme/app_styles.dart';
import 'package:event_planning/features/tabs/profile_tab/language_modal_bottom_sheet.dart';
import 'package:event_planning/features/tabs/profile_tab/theme_modal_bottom_sheet.dart';
import 'package:event_planning/features/widgets/custom_elevated_button.dart';
import 'package:event_planning/providers/app_localization_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../core/localization/app_localizations.dart';
import '../../../core/utils/app_routes/routes_manger.dart';
import '../../../providers/app_theme_provider.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    var appLanguageProvider = Provider.of<AppLocalizationProvider>(context);
    var appThemeProvider = Provider.of<AppThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.only(
            bottomLeft: Radius.circular(76.r),
          ),
        ),
        toolbarHeight: 156.h,
        backgroundColor: AppColors.primaryLight,
        title: Row(
          spacing: 16.w,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(AppImages.shadyImage),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Shady Ashraf", style: AppStyles.bold24WhiteBg),
                  Text(
                    "Shady@gmail.com",
                    style: AppStyles.medium16WhiteBg,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: Column(
          spacing: 16.h,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            GestureDetector(
              onTap: selectLanguage,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                width: 360.w,
                height: 56.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  border: BoxBorder.all(
                    color: AppColors.primaryLight,
                    width: 2.w,
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      isSelectedLang(appLanguageProvider.local),
                      style: AppStyles.bold20Primary,
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      size: 25,
                      color: AppColors.primaryLight,
                    ),
                  ],
                ),
              ),
            ),
            Text(
              AppLocalizations.of(context)!.theme,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            GestureDetector(
              onTap: selectTheme,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                width: 360.w,
                height: 56.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  border: BoxBorder.all(
                    color: AppColors.primaryLight,
                    width: 2.w,
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      isSelectedTheme(appThemeProvider.themeMode),
                      style: AppStyles.bold20Primary,
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      size: 25,
                      color: AppColors.primaryLight,
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            CustomElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, RoutesManger.login);
              },
              elevatedButtonText: AppLocalizations.of(context)!.logout,
              backgroundColor: AppColors.red,
              elevatedButtonTextStyle: AppStyles.regular20White,
              mainAxisAlignment: MainAxisAlignment.start,
              hasIcon: true,
              icon: Icon(
                Icons.logout_rounded,
                size: 30,
                color: AppColors.whiteBg,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String isSelectedTheme(ThemeMode appTheme) {
    if (appTheme == ThemeMode.light) {
      return AppLocalizations.of(context)!.light;
    } else {
      return AppLocalizations.of(context)!.dark;
    }
  }

  void selectTheme() {
    showModalBottomSheet(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      context: context,
      builder: (context) => ThemeModalBottomSheet(),
    );
  }

  String isSelectedLang(String appLanguage) {
    if (appLanguage == 'en') {
      return AppLocalizations.of(context)!.english;
    } else {
      return AppLocalizations.of(context)!.arabic;
    }
  }

  void selectLanguage() {
    showModalBottomSheet(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      context: context,
      builder: (context) => LanguageModalBottomSheet(),
    );
  }
}
