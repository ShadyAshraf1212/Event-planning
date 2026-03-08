import 'package:event_planning/core/utils/theme/app_colors.dart';
import 'package:event_planning/core/utils/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef OnValidator = String? Function(String?)?;

class CustomTextFormField extends StatelessWidget {
  Color? borderSideColor;
  String hintText;
  TextStyle? hintTextStyle;
  Widget? prefixIcon;
  Widget? suffixIcon;
  Color? cursorColor;
  OnValidator? validator;
  TextEditingController controller;
  bool? obscureText;
  int maxLines;

  CustomTextFormField({
    super.key,
    this.borderSideColor,
    required this.hintText,
    this.hintTextStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.cursorColor,
    this.validator,
    required this.controller,
    this.obscureText,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 18.h),
        enabledBorder: customOutlineInputBorder(borderSideColor),
        focusedBorder: customOutlineInputBorder(borderSideColor),
        errorBorder: customOutlineInputBorder(AppColors.red),
        focusedErrorBorder: customOutlineInputBorder(AppColors.red),
        hintText: hintText,
        hintStyle: hintTextStyle ?? Theme.of(context).textTheme.labelMedium,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        errorStyle: AppStyles.bold14red,
      ),
      cursorColor: cursorColor ?? AppColors.gray,
      validator: validator,
      controller: controller,
      style: AppStyles.medium16Primary,
      cursorErrorColor: AppColors.red,
      obscureText: obscureText ?? false,
      obscuringCharacter: "*",
      maxLines: maxLines,
    );
  }
}

OutlineInputBorder customOutlineInputBorder(Color? borderSideColor) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: borderSideColor ?? AppColors.gray, width: 1),
    borderRadius: BorderRadius.circular(16.r),
  );
}
