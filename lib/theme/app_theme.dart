import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/theme/pallete.dart';

//import 'package:flutter/material.dart';
//import 'pallete.dart';

class AppTheme {
  static ThemeData theme = ThemeData.light().copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: Pallete.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Pallete.backgroundColor,
      elevation: 0,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Pallete.greenColor,
    ),
  );
}
