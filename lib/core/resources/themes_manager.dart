
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
      displayMedium: getSectraRegularStyle(color: ColorsManager.white),
      headlineMedium: getRegularStyle(color: ColorsManager.grey, fontSize: AppValues.v14),
      titleMedium: getMediumStyle(color: ColorsManager.lightGrey, fontSize: FontSize.s14),
      bodyLarge: getBoldStyle(color: ColorsManager.white, fontSize: AppValues.v20),
      bodySmall: getRegularStyle(color: ColorsManager.grey),
  ),

    /// Input Decoration Theme (Text FormFiled)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppValues.v8),
      hintStyle:
      getRegularStyle(color: ColorsManager.white60, fontSize: FontSize.s14),
      errorStyle: getRegularStyle(color: ColorsManager.lightRed),

      /// Enable Border
      enabledBorder: const OutlineInputBorder(
          borderSide:
          BorderSide(color: ColorsManager.white60, width: AppValues.v1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppValues.v8))),

      /// Focused Border
      focusedBorder: const OutlineInputBorder(
          borderSide:
          BorderSide(color: ColorsManager.white60, width: AppValues.v1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppValues.v8))),

      /// Error Border
      errorBorder: const OutlineInputBorder(
          borderSide:
          BorderSide(color: ColorsManager.lightRed, width: AppValues.v1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppValues.v8))),

      /// Focused Error Border
      focusedErrorBorder: const OutlineInputBorder(
          borderSide:
          BorderSide(color: ColorsManager.white60, width: AppValues.v1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppValues.v8))),
    )
);