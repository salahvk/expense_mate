import 'package:expense_mate/config/theme/color.dart';
import 'package:expense_mate/config/theme/text_theme.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  // Define overall app theme
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.white,

  // Define global InputDecoration theme
  inputDecorationTheme: InputDecorationTheme(
    filled: true, // Enable background fill
    fillColor: Colors.white,
    contentPadding: const EdgeInsets.all(15), // Padding inside TextField
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0), // Rounded border
      borderSide: const BorderSide(color: ExpenseMateColors.primary, width: 2),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: ExpenseMateColors.primary, width: 2),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: ExpenseMateColors.primary, width: 3),
    ),
  ),
  textTheme: AppTextTheme.textTheme(fontFamily: 'Poppins'),
);
