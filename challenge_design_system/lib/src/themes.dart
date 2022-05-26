import 'package:flutter/material.dart';

final themeLight = ThemeData(
  scaffoldBackgroundColor: const Color(0xfffefeff),
  textSelectionTheme: const TextSelectionThemeData(
    selectionColor: Color(0xfffefeff),
  ),
  colorScheme: const ColorScheme.light(
    primary: Color(0xfffefeff),
    onPrimary: Color(0xffd6d7d6),
    inversePrimary: Color(0xff84b3b2),
    secondary: Color(0xfff6f7f7),
    tertiary: Color(0xff316061),
  ),
  textTheme: const TextTheme(
    displaySmall: TextStyle(
      color: Color(0xfffefeff),
      fontSize: 15,
    ),
    labelMedium: TextStyle(
      color: Color(0xff84b3b2),
      fontSize: 17.5,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      color: Color(0xff84b3b2),
      fontWeight: FontWeight.w500,
      fontSize: 12.5,
    ),
    bodyLarge: TextStyle(
      color: Color(0xff646464),
      fontWeight: FontWeight.w800,
      fontSize: 17.5,
    ),
    bodyMedium: TextStyle(
      color: Color(0xff929292),
      fontWeight: FontWeight.w500,
      fontSize: 12.5,
    ),
  ),
  iconTheme: const IconThemeData(color: Color(0xff316061)),
  drawerTheme: const DrawerThemeData(
    backgroundColor: Color(0xff406d6c),
  ),
);
