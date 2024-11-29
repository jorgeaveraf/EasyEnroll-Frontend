import 'package:flutter/material.dart';

class AppTheme {
  static const Color azul = Color(0xFF253064);
  static const Color dorado = Color(0xFFF3BA53);

  static final TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'LeagueGothic',
      fontSize: 36,
      fontWeight: FontWeight.normal,
      letterSpacing: 2,
      color: azul,
    ),
    displayMedium: TextStyle(
      fontFamily: 'LeagueGothic',
      fontSize: 28,
      fontWeight: FontWeight.normal,
      letterSpacing: 1.5,
      color: azul,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 16,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 14,
      color: Colors.black,
    ),
    labelLarge: TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );

  static final ThemeData theme = ThemeData(
    primaryColor: azul,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: azul,
      secondary: dorado,
    ),
    textTheme: textTheme,
  );
}
