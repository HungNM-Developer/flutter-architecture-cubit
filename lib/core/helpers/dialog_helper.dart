import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../widgets/bottomsheet/common_bottom_sheet.dart';
import '../../widgets/dialog/action_dialog.dart';
import '../../widgets/dialog/common_dialog.dart';
import '../../widgets/dialog/notice_dialog.dart';
import '../enums/notice_dialog_type.dart';
import 'theme_helper.dart';

abstract class DialogHelper {
  void snackBar(
    BuildContext context, {
    required String content,
    Duration duration = const Duration(seconds: 1),
  });

  Future<T?> noticeDialog<T>(
    BuildContext context, {
    required String title,
    ActionCommonDialog? positiveAction,
    ActionCommonDialog? negativeAction,
    String? message,
    NoticeDialogType type = NoticeDialogType.warning,
    bool touchOutsideToDismiss = true,
  });

  Future<T?> actionDialog<T>(
    BuildContext context, {
    ActionCommonDialog? positiveAction,
    ActionCommonDialog? negativeAction,
    required Widget body,
    required Widget header,
    bool touchOutsideToDismiss = true,
  });

  Future<T?> bottomSheet<T>(
    BuildContext context, {
    String? title,
    VoidCallback? onBackPressed,
    Widget? action,
    Widget? child,
    Widget? childAbsolutely,
    bool isDismissible = true,
    bool enableDrag = true,
  });
}

class DialogHelperImpl implements DialogHelper {
  @override
  void snackBar(
    BuildContext context, {
    required String content,
    Duration duration = const Duration(seconds: 1),
  }) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(content),
        duration: duration,
      ),
    );
  }

  @override
  Future<T?> noticeDialog<T>(
    BuildContext context, {
    required String title,
    ActionCommonDialog? positiveAction,
    ActionCommonDialog? negativeAction,
    String? message,
    NoticeDialogType type = NoticeDialogType.warning,
    bool touchOutsideToDismiss = true,
  }) {
    return showDialog(
      context: context,
      builder: (_) => NoticeDialog(
        title: title,
        touchOutsideToDismiss: touchOutsideToDismiss,
        negativeAction: negativeAction,
        positiveAction: positiveAction,
        message: message,
        type: type,
      ),
    );
  }

  @override
  Future<T?> actionDialog<T>(
    BuildContext context, {
    ActionCommonDialog? positiveAction,
    ActionCommonDialog? negativeAction,
    required Widget body,
    required Widget header,
    bool touchOutsideToDismiss = true,
  }) {
    return showDialog(
      context: context,
      builder: (_) => ActionDialog(
        touchOutsideToDismiss: touchOutsideToDismiss,
        negativeAction: negativeAction,
        positiveAction: positiveAction,
        body: body,
        header: header,
      ),
    );
  }

  @override
  Future<T?> bottomSheet<T>(
    BuildContext context, {
    String? title,
    VoidCallback? onBackPressed,
    Widget? action,
    Widget? child,
    Widget? childAbsolutely,
    bool isDismissible = true,
    bool enableDrag = true,
  }) {
    return showMaterialModalBottomSheet(
      context: context,
      backgroundColor: ThemeHelper.backgroundColorDialog(context),
      barrierColor: ThemeHelper.backgroundDismissDialog(context),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.r),
          topLeft: Radius.circular(20.r),
        ),
      ),
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      builder: (_) =>
          childAbsolutely ??
          CommonBottomSheet(
            title: title ?? '',
            onBackPressed: onBackPressed,
            action: action,
            child: child ?? const SizedBox.shrink(),
          ),
    );
  }
}
