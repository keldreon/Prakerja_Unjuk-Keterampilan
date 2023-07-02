import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/theme/pallete.dart';

//import 'package:flutter/material.dart';
//import 'pallete.dart';

class AppTheme {
  static ThemeData theme = ThemeData.light().copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: Pallete.greyColor2,
    appBarTheme: const AppBarTheme(
      backgroundColor: Pallete.whiteColor,
      elevation: 0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Pallete.greenColor,
    ),
  );
}
