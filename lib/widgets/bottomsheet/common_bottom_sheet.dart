import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/helpers/theme_helper.dart';
import '../../core/resource/app_images.dart';

// TODO(anhlt): improve overlap action and title later
class CommonBottomSheet extends StatelessWidget {
  final VoidCallback? onBackPressed;
  final String title;
  final Widget? action;
  final Widget? child;
  const CommonBottomSheet({
    Key? key,
    required this.title,
    this.onBackPressed,
    this.action,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 40.w,
          height: 4.h,
          margin: REdgeInsets.only(top: 8),
          decoration: BoxDecoration(
            color: ThemeHelper.backgroundAnchorBottomSheet(context),
            borderRadius: BorderRadius.circular(30.r),
          ),
        ),
        SizedBox(
          height: 57.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: ThemeHelper.textColorTitle(context),
                ),
              ),
              Row(
                children: [
                  if (onBackPressed != null) _buildBackButton(),
                  const Spacer(),
                  if (action != null) action!,
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: ThemeHelper.dividerColorBottomSheet(context),
          thickness: 1.h,
          height: 1.h,
        ),
        if (child != null) child!,
      ],
    );
  }

  Widget _buildBackButton() {
    return ElevatedButton(
      onPressed: onBackPressed?.call,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        fixedSize: Size(40.r, 40.r),
        shape: const CircleBorder(),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      child: const Icon(Icons.arrow_back_ios),
    );
  }
}
