import 'package:event_planning/core/utils/theme/app_colors.dart';
import 'package:event_planning/core/utils/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  VoidCallback onPressed;
  String elevatedButtonText;
  TextStyle? elevatedButtonTextStyle;
  Color? backgroundColor;
  Color? borderSideColor;

  bool? hasIcon;
  Widget? icon;
  MainAxisAlignment? mainAxisAlignment;

  CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.elevatedButtonText,
    this.backgroundColor = AppColors.primaryLight,
    this.borderSideColor,
    this.hasIcon,
    this.elevatedButtonTextStyle,
    this.icon,
    this.mainAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        backgroundColor: backgroundColor,
        shadowColor: backgroundColor ?? AppColors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16.r),
          side: BorderSide(
            color: borderSideColor ?? AppColors.transparent,
            width: 1,
          ),
        ),
      ),
      onPressed: onPressed,
      child: hasIcon ?? false
          ? Row(
              mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: icon!,
                ),
                Text(elevatedButtonText, style: elevatedButtonTextStyle),
              ],
            )
          : Text(elevatedButtonText, style: AppStyles.medium20White),
    );
  }
}
