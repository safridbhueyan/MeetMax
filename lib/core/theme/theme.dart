import 'package:flutter/material.dart';
import 'package:meetmax/core/theme/part/app_bar_theme.dart';
import 'package:meetmax/core/theme/part/date_picker_theme.dart';
import 'package:meetmax/core/theme/part/elevated_button_theme.dart';
import 'package:meetmax/core/theme/part/input_decoration_theme.dart';
import 'package:meetmax/core/theme/part/time_picker_theme.dart';
import 'package:meetmax/core/theme/theme_extension/app_colors.dart';
import 'package:meetmax/core/theme/theme_extension/text_theme.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    inputDecorationTheme: AppInputDecorationTheme.inputDecorationTheme,
    scaffoldBackgroundColor: AppColors.primary,
    appBarTheme: AppAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: AppEvaluatedButtonThemes.evaluatedButtonTheme,
    textTheme: AppTextTheme.darkTextTheme,
    colorScheme: AppColors.darkColorScheme,
    timePickerTheme: CustomTimePickerTheme.timePickerTheme,
    datePickerTheme: CustomDatePickerTheme.datePickerTheme,
  );
  static ThemeData darkTheme = ThemeData(
    inputDecorationTheme: AppInputDecorationTheme.inputDecorationTheme,

    scaffoldBackgroundColor: AppColors.primary,
    appBarTheme: AppAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: AppEvaluatedButtonThemes.evaluatedButtonTheme,
    textTheme: AppTextTheme.darkTextTheme,
    colorScheme: AppColors.darkColorScheme,
    timePickerTheme: CustomTimePickerTheme.timePickerTheme,
    datePickerTheme: CustomDatePickerTheme.datePickerTheme,
  );
}
