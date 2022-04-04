import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData theme = ThemeData(
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.white),
      bodyText2: TextStyle(color: Colors.white),
    ).apply(
      bodyColor: Colors.white,
      displayColor: Colors.blue,
    ),
    fontFamily: GoogleFonts.roboto().fontFamily,
  );
}
