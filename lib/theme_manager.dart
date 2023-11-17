import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  textTheme:  TextTheme(
    displayLarge: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
    displayMedium: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    displaySmall: const TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    headlineLarge: TextStyle(
      color: Colors.grey.shade700,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    headlineMedium: TextStyle(
      color: Colors.grey.shade700,
      fontWeight: FontWeight.bold,
      fontSize: 15,
    ),
    headlineSmall: TextStyle(
      color: Colors.grey.shade600,
      fontWeight: FontWeight.w400,
      fontSize: 13,
    ),
  ),
);
