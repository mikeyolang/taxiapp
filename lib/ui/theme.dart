import 'dart:ui';

import 'package:flutter/material.dart';

extension XPadding on Widget {
  Padding paddingAll(double value) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: this,
    );
  }

  Padding paddingLeft(double value) {
    return Padding(
      padding: EdgeInsets.only(left: value),
      child: this,
    );
  }

  Padding paddingRight(double value) {
    return Padding(
      padding: EdgeInsets.only(right: value),
      child: this,
    );
  }

  Padding paddingBottom(double value) {
    return Padding(
      padding: EdgeInsets.only(bottom: value),
      child: this,
    );
  }

  Padding paddingTop(double value) {
    return Padding(
      padding: EdgeInsets.only(top: value),
      child: this,
    );
  }

  Padding paddingVertical(double value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: value),
      child: this,
    );
  }

  Padding paddingHorizontal(double value) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: value),
      child: this,
    );
  }
}

class CityTheme {
  static const double elementSpacing = 16;

  static const Color cityblue = Color(0xFF2669A4);
  static const Color cityWhite = Color(0xFFFFFFFF);
  static const Color cityBlack = Color(0xFF3E3D3D);
  static const Color cityLightGrey = Color(0xFFE6E7E8);
  static const Color cityGrey = Color(0xFF707070);
  static const Color cityOrange = Color(0xFFE39219);

  static ThemeData theme = ThemeData(
    primaryColor: cityblue,
    colorScheme: const ColorScheme(
      background: cityWhite,
      brightness: Brightness.light,
      primary: Color.fromARGB(12, 45, 35, 12),
      onPrimary: Color.fromARGB(13, 12, 14, 15),
      secondary: Color.fromARGB(11, 12, 13, 14),
      onSecondary: Color.fromARGB(11, 12, 13, 14),
      error: Color.fromARGB(11, 12, 13, 14),
      onError: Color.fromARGB(11, 12, 13, 14),
      onBackground: Color.fromARGB(11, 12, 13, 14),
      surface: Color.fromARGB(11, 12, 13, 14),
      onSurface: Color.fromARGB(11, 12, 13, 14),
    ),
  );
}
