import 'package:flutter/material.dart';
import 'package:novindus_test/config/theme/colors.dart';

class AppTheme {
  static ThemeData getThemeData() => ThemeData(
        tabBarTheme: const TabBarTheme(
            labelColor: Colors.black, indicatorColor: Colors.black87),
        dividerColor: Colors.transparent,
        // primarySwatch: Colors.green,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.black,
          brightness: Brightness.light,
        ),
        fontFamily: 'Kollektif',
        iconButtonTheme: IconButtonThemeData(
            style: IconButton.styleFrom(foregroundColor: AppColors.black)),
        iconTheme: const IconThemeData(color: AppColors.black),
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
            centerTitle: true,
            backgroundColor: AppColors.black,
            elevation: 0),
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          titleMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.textColor),
          titleSmall: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
      );
}
