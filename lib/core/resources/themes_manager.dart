
import 'package:bookly/core/resources/colors_manager.dart';
import 'package:bookly/core/resources/styles_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'fonts_manager.dart';

ThemeData getAppTheme() => ThemeData.dark().copyWith(
  scaffoldBackgroundColor: ColorsManager.primary,

  /// AppBar Style
  appBarTheme: const AppBarTheme(
    backgroundColor: ColorsManager.primary,
  ),

  /// Text Style
  textTheme: TextTheme(
      displayLarge: getSimiBoldStyle(color: ColorsManager.white, fontSize: AppValues.v30),
      headlineMedium: getRegularStyle(color: ColorsManager.grey, fontSize: AppValues.v14),
      titleMedium: getMediumStyle(color: ColorsManager.lightGrey, fontSize: FontSize.s14),
      bodyLarge: getBoldStyle(color: ColorsManager.white, fontSize: AppValues.v20),
      bodySmall: getRegularStyle(color: ColorsManager.grey),
  ),
);