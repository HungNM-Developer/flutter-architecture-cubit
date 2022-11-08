import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/theme/theme_bloc.dart';

class ThemeHelper {
  static Color black(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.black
        : _LightTheme.black;
  }

  static Color white(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.white
        : _LightTheme.white;
  }

  /// Shimmer color session
  static Color shimmerBaseColor(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.shimmerBaseColor
        : _LightTheme.shimmerBaseColor;
  }

  static Color shimmerHighlightColor(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.shimmerHighlightColor
        : _LightTheme.shimmerHighlightColor;
  }

  /// Background color session
  static Color backgroundColor(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.backgroundColor
        : _LightTheme.backgroundColor;
  }

  static Color backgroundColorDialog(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.backgroundColorDialog
        : _LightTheme.backgroundColorDialog;
  }

  static Color backgroundDismissDialog(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.backgroundDismissDialog
        : _LightTheme.backgroundDismissDialog;
  }

  static Color backgroundBadge(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.backgroundBadge
        : _LightTheme.backgroundBadge;
  }

  static Color backgroundTabViewColor(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.backgroundTabViewColor
        : _LightTheme.backgroundTabViewColor;
  }

  static Color backgroundSelectedOption(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.backgroundSelectedOption
        : _LightTheme.backgroundSelectedOption;
  }

  static Color backgroundColorCollapseProjectSelection(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.backgroundColorCollapseProjectSelection
        : _LightTheme.backgroundColorCollapseProjectSelection;
  }

  static Color backgroundColorExpandProjectSelection(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.backgroundColorExpandProjectSelection
        : _LightTheme.backgroundColorExpandProjectSelection;
  }

  static Color backgroundAnchorBottomSheet(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.backgroundAnchorBottomSheet
        : _LightTheme.backgroundAnchorBottomSheet;
  }

  /// Button color session
  static Color buttonColorPrimary(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.buttonColorPrimary
        : _LightTheme.buttonColorPrimary;
  }

  static Color buttonColorSecondary(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.buttonColorSecondary
        : _LightTheme.buttonColorSecondary;
  }

  static Color buttonColorNormal(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.buttonColorNormal
        : _LightTheme.buttonColorNormal;
  }

  /// Text color session
  static Color textColorTitle(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorTitle
        : _LightTheme.textColorTitle;
  }

  static Color textColorBody(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorBody
        : _LightTheme.textColorBody;
  }

  static Color textColorBodySubtitle(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorBodySubtitle
        : _LightTheme.textColorBodySubtitle;
  }

  static Color textColorNormalButton(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorNormalButton
        : _LightTheme.textColorNormalButton;
  }

  static Color textColorPrimaryButton(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorPrimaryButton
        : _LightTheme.textColorPrimaryButton;
  }

  static Color textColorLabelTextField(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorLabelTextField
        : _LightTheme.textColorLabelTextField;
  }

  static Color textColorHintTextField(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorHintTextField
        : _LightTheme.textColorHintTextField;
  }

  static Color textColorContentTextField(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorContentTextField
        : _LightTheme.textColorContentTextField;
  }

  static Color textColorLink(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorLink
        : _LightTheme.textColorLink;
  }

  static Color textColorTitleDashboard(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorTitleDashboard
        : _LightTheme.textColorTitleDashboard;
  }

  static Color textColorTitleNoticeDialog(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorTitleNoticeDialog
        : _LightTheme.textColorTitleNoticeDialog;
  }

  static Color textColorContentNoticeDialog(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorContentNoticeDialog
        : _LightTheme.textColorContentNoticeDialog;
  }

  static Color textColorLoginOr(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorLoginOr
        : _LightTheme.textColorLoginOr;
  }

  static Color textColorSelectedBottomNavigation(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorSelectedBottomNavigation
        : _LightTheme.textColorSelectedBottomNavigation;
  }

  static Color textColorUnselectedBottomNavigation(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorUnselectedBottomNavigation
        : _LightTheme.textColorUnselectedBottomNavigation;
  }

  static Color textColorLeftLineChart(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorLeftLineChart
        : _LightTheme.textColorLeftLineChart;
  }

  static Color textColorRightLineChart(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorRightLineChart
        : _LightTheme.textColorRightLineChart;
  }

  static Color textColorDefaultTab(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorDefaultTab
        : _LightTheme.textColorDefaultTab;
  }

  static Color textColorSelectedTab(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorSelectedTab
        : _LightTheme.textColorSelectedTab;
  }

  static Color textColorTitleReportDetail(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorTitleReportDetail
        : _LightTheme.textColorTitleReportDetail;
  }

  static Color textColorAlertTitle(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorAlertTitle
        : _LightTheme.textColorAlertTitle;
  }

  static Color textColorAlertProjectName(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorAlertProjectName
        : _LightTheme.textColorAlertProjectName;
  }

  static Color textColorAlertMessage(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorAlertMessage
        : _LightTheme.textColorAlertMessage;
  }

  static Color textColorAlertSolved(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorAlertSolved
        : _LightTheme.textColorAlertSolved;
  }

  static Color textColorAlertMessageUrgent(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorAlertMessageUrgent
        : _LightTheme.textColorAlertMessageUrgent;
  }

  static Color textColorErrorOrWarning(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorErrorOrWarning
        : _LightTheme.textColorErrorOrWarning;
  }

  static Color textColorCurrentPower(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textColorCurrentPower
        : _LightTheme.textColorCurrentPower;
  }

  static Color textYellow(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textYellow
        : _LightTheme.textYellow;
  }

  static Color textRed(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textRed
        : _LightTheme.textRed;
  }

  static Color textAlertTimeHappen(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.textAlertTimeHappen
        : _LightTheme.textAlertTimeHappen;
  }

  /// Border color session
  static Color borderColorTextField(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.borderColorTextField
        : _LightTheme.borderColorTextField;
  }

  static Color borderColorActiveTextField(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.borderColorActiveTextField
        : _LightTheme.borderColorActiveTextField;
  }

  static Color borderColorSeparateDialog(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.borderColorSeparateDialog
        : _LightTheme.borderColorSeparateDialog;
  }

  static Color borderColorOutlineButton(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.borderColorOutlineButton
        : _LightTheme.borderColorOutlineButton;
  }

  static Color borderProjectDetail(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.borderProjectDetail
        : _LightTheme.borderProjectDetail;
  }

  static Color borderColorBarChart(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.borderColorBarChart
        : _LightTheme.borderColorBarChart;
  }

  /// Divider color session

  static Color dividerBreak(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.dividerBreak
        : _LightTheme.dividerBreak;
  }

  static Color dividerColor(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.dividerColor
        : _LightTheme.dividerColor;
  }

  static Color dividerColorBottomSheet(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.dividerColorBottomSheet
        : _LightTheme.dividerColorBottomSheet;
  }

  static Color dividerColorCurrentPower(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.dividerColorCurrentPower
        : _LightTheme.dividerColorCurrentPower;
  }

  static Color dividerTabSelectColor(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.dividerTabSelectColor
        : _LightTheme.dividerTabSelectColor;
  }

  static Color dividerVerticalGreen(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.dividerVerticalGreen
        : _LightTheme.dividerVerticalGreen;
  }

  static Color dividerVerticalYellow(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.dividerVerticalYellow
        : _LightTheme.dividerVerticalYellow;
  }

  static Color dividerVerticalRed(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.dividerVerticalRed
        : _LightTheme.dividerVerticalRed;
  }

  static Color columnOfChart1(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.columnOfChart1
        : _LightTheme.columnOfChart1;
  }

  static Color columnOfChart2(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.columnOfChart2
        : _LightTheme.columnOfChart2;
  }

  static Color columnOfChart3(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.columnOfChart3
        : _LightTheme.columnOfChart3;
  }

  static Color columnOfChart4(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.columnOfChart4
        : _LightTheme.columnOfChart4;
  }

  static Color columnOfChart5(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.columnOfChart5
        : _LightTheme.columnOfChart5;
  }

  static Color leftTextBarChart(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.leftTextBarChart
        : _LightTheme.leftTextBarChart;
  }
}

class _LightTheme {
  static const Color black = Colors.black;
  static const Color white = Colors.white;

  /// Shimmer color session
  static const Color shimmerBaseColor = Color(0xFFE0E0E0);
  static const Color shimmerHighlightColor = Colors.white;

  /// Background color session
  static const Color backgroundColor = Colors.white;
  static const Color backgroundColorDialog = Colors.white;
  static const Color backgroundDismissDialog = Color(0xA8000000);
  static const Color backgroundAnchorBottomSheet = Color(0xFFBABABA);
  static const Color backgroundTabViewColor = Color(0xFFF4F4F4);
  static const Color backgroundSelectedOption = Color(0x1A76B24F);
  static const Color backgroundBadge = Color(0xFFED3D3D);
  static const Color backgroundColorCollapseProjectSelection =
      Color(0x1462A183);
  static const Color backgroundColorExpandProjectSelection = Colors.white;

  /// Button color session
  static const Color buttonColorPrimary = Color(0xFF6EA847);
  static const Color buttonColorSecondary = Color(0xFFF1514F);
  static const Color buttonColorNormal = Color(0xFFEBEBEB);

  /// Text color session
  static const Color textColorTitle = Color(0xFF1D1D1D);
  static const Color textColorBody = Color(0xFF383838);
  static const Color textColorBodySubtitle = Color(0xFFA3A3A3);
  static const Color textColorNormalButton = Colors.black;
  static const Color textColorPrimaryButton = Colors.white;
  static const Color textColorLabelTextField = Color(0xFF383838);
  static const Color textColorHintTextField = Color(0xFF848484);
  static const Color textColorContentTextField = Colors.black;
  static const Color textColorTitleNoticeDialog = Color(0xFF383838);
  static const Color textColorContentNoticeDialog = Colors.black;
  static const Color textColorLink = Color(0xFF4F91B2);
  static const Color textColorLoginOr = Color(0xFF648B6A);
  static const Color textColorSelectedBottomNavigation = Color(0xFF438634);
  static const Color textColorUnselectedBottomNavigation = Color(0xFF8D8D8D);
  static const Color textColorTitleDashboard = Color(0xFF555555);
  static const Color textColorLeftLineChart = Color.fromRGBO(113, 204, 48, 1);
  static const Color textColorRightLineChart = Color.fromRGBO(16, 129, 180, 1);
  static const Color textColorDefaultTab = Color(0xFF909090);
  static const Color textColorSelectedTab = Color(0xFF6EA847);
  static const Color textRed = Color(0xFFD5635D);
  static const Color textYellow = Color(0xFFD5AD32);
  static const Color textColorAlertTitle = Color(0xFF030303);
  static const Color textColorAlertProjectName = Color(0xFF4F91B2);
  static const Color textColorAlertMessage = Color(0xFFF77D28);
  static const Color textColorTitleReportDetail = Color(0xFF030303);
  static const Color textColorAlertSolved = Color(0xFF5383EF);
  static const Color textColorAlertMessageUrgent = Color(0xFFEF1A0D);
  static const Color textColorErrorOrWarning = Color(0xFFB44C46);
  static const Color textColorCurrentPower = Colors.white;
  static const Color textAlertTimeHappen = Color(0xFF6A6A6A);

  /// Border color session
  static const Color borderColorTextField = Color(0xFFD9D9D9);
  static const Color borderColorActiveTextField = Color(0xFF6EA847);
  static const Color borderColorSeparateDialog = Color(0xFFE6E6E6);
  static const Color borderColorOutlineButton = Color(0xFFD9D9D9);
  static const Color borderProjectDetail = Color(0xFFEBEBEB);
  static const Color borderColorBarChart = Color(0xFFCCCCCC);

  /// Divider color session
  static const Color dividerColor = Color(0xFFF4F4F4);
  static const Color dividerColorBottomSheet = Color(0xFFEDEDED);
  static const Color dividerColorCurrentPower = Color(0x59FFFFFF);
  static const Color dividerTabSelectColor = Color(0xFF76B24F);
  static const Color dividerBreak = Color(0xFFEBEAEA);
  static const Color dividerVerticalGreen = Color(0xFF8AC53F);
  static const Color dividerVerticalYellow = Color(0xFFE0B762);
  static const Color dividerVerticalRed = Color(0xFFD35454);

  /// Column of chart color
  static const Color columnOfChart1 = Color(0xFF1A1A1A);
  static const Color columnOfChart2 = Color(0xFF0090F0);
  static const Color columnOfChart3 = Color(0xFFF29E03);
  static const Color columnOfChart4 = Color(0xFF07D949);
  static const Color columnOfChart5 = Color(0xFF18BAA7);
  static const Color leftTextBarChart = Color(0xFF333333);
}

class _DarkTheme {
  static const Color black = Colors.black;
  static const Color white = Colors.white;

  /// Shimmer color session
  static const Color shimmerBaseColor = Colors.white12;
  static const Color shimmerHighlightColor = Colors.white;

  /// Background color session
  static const Color backgroundColor = Colors.white;
  static const Color backgroundColorDialog = Colors.white;
  static const Color backgroundDismissDialog = Color(0xA8000000);
  static const Color backgroundAnchorBottomSheet = Color(0xFFBABABA);
  static const Color backgroundTabViewColor = Color(0xFFF4F4F4);
  static const Color backgroundSelectedOption = Color(0x1A76B24F);
  static const Color backgroundBadge = Color(0xFFED3D3D);
  static const Color backgroundColorCollapseProjectSelection =
      Color(0x1462A183);
  static const Color backgroundColorExpandProjectSelection = Colors.white;

  /// Button color session
  static const Color buttonColorPrimary = Color(0xFF6EA847);
  static const Color buttonColorSecondary = Color(0xFFF1514F);
  static const Color buttonColorNormal = Color(0xFFEBEBEB);

  /// Text color session
  static const Color textColorTitle = Color(0xFF1D1D1D);
  static const Color textColorBody = Color(0xFF383838);
  static const Color textColorBodySubtitle = Color(0xFFA3A3A3);
  static const Color textColorNormalButton = Colors.black;
  static const Color textColorPrimaryButton = Colors.white;
  static const Color textColorLabelTextField = Color(0xFF383838);
  static const Color textColorHintTextField = Color(0xFF848484);
  static const Color textColorContentTextField = Colors.black;
  static const Color textColorTitleNoticeDialog = Color(0xFF383838);
  static const Color textColorContentNoticeDialog = Colors.black;
  static const Color textColorLink = Color(0xFF4F91B2);
  static const Color textColorLoginOr = Color(0xFF648B6A);
  static const Color textColorSelectedBottomNavigation = Color(0xFF438634);
  static const Color textColorUnselectedBottomNavigation = Color(0xFF8D8D8D);
  static const Color textColorTitleDashboard = Color(0xFF555555);
  static const Color textColorLeftLineChart = Color.fromRGBO(113, 204, 48, 1);
  static const Color textColorRightLineChart = Color.fromRGBO(16, 129, 180, 1);
  static const Color textColorDefaultTab = Color(0xFF909090);
  static const Color textColorSelectedTab = Color(0xFF6EA847);
  static const Color textRed = Color(0xFFD5635D);
  static const Color textYellow = Color(0xFFD5AD32);
  static const Color textColorAlertTitle = Color(0xFF030303);
  static const Color textColorAlertProjectName = Color(0xFF4F91B2);
  static const Color textColorAlertMessage = Color(0xFFF77D28);
  static const Color textColorTitleReportDetail = Color(0xFF030303);
  static const Color textColorAlertSolved = Color(0xFF5383EF);
  static const Color textColorAlertMessageUrgent = Color(0xFFEF1A0D);
  static const Color textColorErrorOrWarning = Color(0xFFB44C46);
  static const Color textColorCurrentPower = Colors.white;
  static const Color textAlertTimeHappen = Color(0xFF6A6A6A);

  /// Border color session
  static const Color borderColorTextField = Color(0xFFD9D9D9);
  static const Color borderColorActiveTextField = Color(0xFF6EA847);
  static const Color borderColorSeparateDialog = Color(0xFFE6E6E6);
  static const Color borderColorOutlineButton = Color(0xFFD9D9D9);
  static const Color borderProjectDetail = Color(0xFFEBEBEB);
  static const Color borderColorBarChart = Color(0xFFCCCCCC);

  /// Divider color session
  static const Color dividerColor = Color(0xFFF4F4F4);
  static const Color dividerColorBottomSheet = Color(0xFFEDEDED);
  static const Color dividerColorCurrentPower = Color(0x59FFFFFF);
  static const Color dividerTabSelectColor = Color(0xFF76B24F);
  static const Color dividerBreak = Color(0xFFEBEAEA);
  static const Color dividerVerticalGreen = Color(0xFF8AC53F);
  static const Color dividerVerticalYellow = Color(0xFFE0B762);
  static const Color dividerVerticalRed = Color(0xFFD35454);

  /// Column of chart color
  static const Color columnOfChart1 = Color(0xFF1A1A1A);
  static const Color columnOfChart2 = Color(0xFF0090F0);
  static const Color columnOfChart3 = Color(0xFFF29E03);
  static const Color columnOfChart4 = Color(0xFF07D949);
  static const Color columnOfChart5 = Color(0xFF18BAA7);
  static const Color leftTextBarChart = Color(0xFF333333);
}
