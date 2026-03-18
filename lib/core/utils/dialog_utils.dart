import 'package:event_planning/core/utils/theme/app_colors.dart';
import 'package:event_planning/core/utils/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DialogUtils {
  static void showLoading(
    BuildContext context, {
    required String loadingTitle,
  }) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        content: Row(
          children: [
            CircularProgressIndicator(color: AppColors.primaryLight),
            SizedBox(width: 30.w),
            Expanded(
              child: Text(loadingTitle, style: AppStyles.medium16Primary),
            ),
          ],
        ),
      ),
    );
  }

  static void hideLoading(BuildContext context) {
    Navigator.pop(context);
  }

  static void showMsg(
    BuildContext context, {
    String? title,
    String? content,
    String? posActionName,
    Function? posAction,
    String? negActionName,
    Function? negAction,
  }) {
    List<Widget> actions = [];
    if (negActionName != null) {
      actions.add(
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            negAction?.call();
          },
          child: Text(negActionName, style: AppStyles.bold20Primary),
        ),
      );
    }
    if (posActionName != null) {
      actions.add(
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            posAction?.call();
          },
          child: Text(posActionName, style: AppStyles.bold20Primary),
        ),
      );
    }

    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: title == null
            ? null
            : Text(title ?? "", style: AppStyles.bold16Primary),
        content: content == null
            ? null
            : Text(content ?? "", style: AppStyles.medium16black),
        actions: actions.isEmpty ? null : actions,
      ),
    );
  }
}
