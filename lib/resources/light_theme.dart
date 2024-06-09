import 'package:flutter/material.dart';
import 'package:flutter_challenge/foundation/theme/app_color.dart';

class AppLightTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.primary,
    indicatorColor: AppColor.primary,
    dialogBackgroundColor: AppColor.primary,
    primaryIconTheme: const IconThemeData(color: AppColor.primary),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      linearMinHeight: 9,
      color: AppColor.secondary,
      linearTrackColor: AppColor.secondary,
      circularTrackColor: AppColor.secondary,
      refreshBackgroundColor: AppColor.secondary,
    ),
    primaryColor: AppColor.primary,
    primarySwatch: Colors.grey,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColor.primary,
      selectionColor: AppColor.primary.withOpacity(0.4),
      selectionHandleColor: AppColor.primary,
    ),
    fontFamily: 'Roboto',
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: AppColor.primary,
      secondary: AppColor.secondary,
    ),
  );
}
