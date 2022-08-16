
import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary_color = Colors.yellowAccent;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary_color,
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: primary_color
      )
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
      unselectedItemColor: Colors.blueGrey
    )
  );

}