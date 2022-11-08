import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../core/helpers/theme_helper.dart';

class AppShimmer extends StatelessWidget {
  final Widget child;
  const AppShimmer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ThemeHelper.shimmerBaseColor(context),
      highlightColor: ThemeHelper.shimmerHighlightColor(context),
      child: child,
    );
  }
}
