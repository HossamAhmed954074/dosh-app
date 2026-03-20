// create a class called AppTheme that will hold the theme data for the app
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_theme.g.dart';

//  i want to add riverpod provider for the theme data and can switch between light and dark theme
@Riverpod(keepAlive: true)
class ThemeProvider extends _$ThemeProvider {
  @override
  ThemeData build() {
    return AppTheme.lightTheme;
  }

  void toggleTheme() {
    state = state == AppTheme.lightTheme
        ? AppTheme.darkTheme
        : AppTheme.lightTheme;
  }
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
    );
  }
}
