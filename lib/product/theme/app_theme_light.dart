import 'package:flutter/material.dart';

class AppThemeLight {
  static AppThemeLight? _instance;
  static AppThemeLight? get instance {
    if (_instance == null) _instance = AppThemeLight._init();
    return _instance;
  }

  AppThemeLight._init();

  ThemeData get theme => ThemeData().copyWith(
      buttonColor: Colors.red,
      floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.red),
      appBarTheme: AppBarTheme(backgroundColor: Colors.red),
      inputDecorationTheme: InputDecorationTheme());
}
