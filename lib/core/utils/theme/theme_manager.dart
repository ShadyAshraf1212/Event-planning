import 'package:event_planning/core/utils/theme/app_colors.dart';
import 'package:event_planning/core/utils/theme/app_styles.dart';
import 'package:flutter/material.dart';

class ThemeManager {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.whiteBg,
    appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: AppColors.black)),
    //todo: text Styles
    textTheme: TextTheme(
      titleMedium: AppStyles.medium16black,
      labelMedium: AppStyles.medium16Gray,
      labelSmall: AppStyles.regular14WhiteBg,
      bodyLarge: AppStyles.bold24WhiteBg,
      titleSmall: AppStyles.medium14WhiteBg,
      displayMedium: AppStyles.bold14black,
      bodyMedium: AppStyles.bold20black,
      headlineMedium: AppStyles.medium16Gray,
      bodySmall: AppStyles.bold16WhiteBg,
      labelLarge: AppStyles.bold14Primary,
      titleLarge: AppStyles.medium16Primary,
      headlineSmall: AppStyles.medium16black,
    ),
    primaryColor: AppColors.primaryLight,
    focusColor: AppColors.whiteBg,
    hintColor: AppColors.primaryLight,
    cardColor: AppColors.whiteBg,
    hoverColor: AppColors.black,
    disabledColor: AppColors.gray,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.transparent,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      selectedItemColor: AppColors.whiteBg,
      unselectedItemColor: AppColors.whiteBg,
      selectedLabelStyle: AppStyles.bold12WhiteBg,
      unselectedLabelStyle: AppStyles.bold12WhiteBg,
    ),
    bottomAppBarTheme: BottomAppBarThemeData(
      shadowColor: AppColors.transparent,
      padding: EdgeInsets.zero,
      color: AppColors.primaryLight,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryLight,
      shape: StadiumBorder(side: BorderSide(color: AppColors.white, width: 4)),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.primaryDark,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: AppColors.primaryLight),
    ),
    //todo: text Styles
    textTheme: TextTheme(
      titleMedium: AppStyles.medium16OffWhite,
      labelMedium: AppStyles.medium16OffWhite,
      labelSmall: AppStyles.regular14OffWhite,
      bodyLarge: AppStyles.bold24OffWhite,
      titleSmall: AppStyles.medium14OffWhite,
      displayMedium: AppStyles.bold14OffWhite,
      bodyMedium: AppStyles.bold20OffWhite,
      headlineMedium: AppStyles.medium16OffWhite,
      bodySmall: AppStyles.bold16primaryDark,
      labelLarge: AppStyles.bold14Primary,
      titleLarge: AppStyles.medium16OffWhite,
      headlineSmall: AppStyles.medium16Primary,
    ),
    hintColor: AppColors.offWhite,
    primaryColor: AppColors.primaryDark,
    focusColor: AppColors.primaryLight,
    cardColor: AppColors.primaryDark,
    disabledColor: AppColors.offWhite,
    hoverColor: AppColors.offWhite,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.transparent,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      selectedItemColor: AppColors.offWhite,
      unselectedItemColor: AppColors.offWhite,
      selectedLabelStyle: AppStyles.bold12OffWhite,
      unselectedLabelStyle: AppStyles.bold12OffWhite,
    ),
    bottomAppBarTheme: BottomAppBarThemeData(
      padding: EdgeInsets.zero,
      color: AppColors.primaryDark,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryDark,
      shape: StadiumBorder(side: BorderSide(color: AppColors.white, width: 4)),
    ),
  );
}
