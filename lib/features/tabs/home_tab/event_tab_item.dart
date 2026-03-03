import 'package:event_planning/core/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventTabItem extends StatelessWidget {
  bool isSelected;
  String eventName;
  Color? borderColor;
  Color selectedBgColor;
  TextStyle? selectedTextStyle;
  TextStyle unSelectedTextStyle;

  EventTabItem({
    super.key,
    required this.isSelected,
    required this.eventName,
    this.borderColor = AppColors.transparent,
    required this.selectedBgColor,
    required this.selectedTextStyle,
    required this.unSelectedTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(46.r),
        border: BoxBorder.all(color: borderColor!, width: 2.w),
        color: isSelected ? selectedBgColor : AppColors.transparent,
      ),
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 8.w),
      child: Text(
        eventName,
        style: isSelected ? selectedTextStyle : unSelectedTextStyle,
      ),
    );
  }
}
