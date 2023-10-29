import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  textTheme: textTheme,
  useMaterial3: true,
);

const textTheme = TextTheme(
  titleLarge: TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
    height: 0,
    letterSpacing: 0.40,
  ),
  titleMedium: TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
    height: 0,
    letterSpacing: 0.40,
  ),
  titleSmall: TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
    height: 0,
    letterSpacing: 0.32,
  ),
  bodySmall: TextStyle(
    color: Color(0xFF9A9A9A),
    fontSize: 12,
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
    height: 0,
    letterSpacing: 0.24,
  ),
);

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
}
