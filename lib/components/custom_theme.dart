import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData current() {
    return ThemeData(
      primarySwatch: Colors.indigo,
      primaryColor: Colors.indigo[200],
      fontFamily: "Roboto",
    );
  }
}
