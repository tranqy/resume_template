import 'package:flutter/material.dart';

class CustomTheme {
  static MaterialColor _selectedColor = Colors.indigo;

  static ThemeData current() {
    return ThemeData(
      primarySwatch: _selectedColor,
      primaryColor: _selectedColor[200],
      fontFamily: "Roboto",
    );
  }
}
