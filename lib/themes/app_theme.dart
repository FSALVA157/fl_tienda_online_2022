
import 'package:flutter/material.dart';

class AppTheme{
//  static final Color primary_color = Colors.yellowAccent.shade700;
 // static final Color primary_color = Color(0xff65CAC5);
//static final Color primary_color = Color(0xffEE7A24);
static final Color primary_color = Color(0xff4369CE);
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary_color,
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: primary_color,
        textStyle: TextStyle(color: Colors.white)
      )
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
      unselectedItemColor: Colors.blueGrey
    )
  );

}