import 'package:flutter/material.dart';
import 'package:language_internationalization/common/themes/app_color.dart';



class LanguageThemeData {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    // brightness: Brightness.light,
    primaryColor: AppColor.csBlueThemeColor,
    backgroundColor: AppColor.white,
    scaffoldBackgroundColor: AppColor.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    // textTheme: AppStyle.getTextTheme(),
    appBarTheme: const AppBarTheme(elevation: 0),
  );
}
