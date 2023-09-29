import 'package:flutter/material.dart';

/// Defines the color palette for the App UI Kit.
abstract class AppColors {
  /// Primary color
  static const Color primary = Color(0xFFEF5350);

  /// Black
  static const Color black = Color(0xFF000000);

  /// Light black
  static const Color lightBlack = Colors.black54;

  /// White
  static const Color white = Color(0xFFFFFFFF);

  /// Transparent
  static const Color transparent = Color(0x00000000);

  /// The light blue color.
  static const MaterialColor lightBlue = Colors.lightBlue;

  /// The pastel grey color.
  static const Color pastelGrey = Color(0xFFCCCCCC);

  /// The on-background color.
  static const Color onBackground = Color(0xFF1A1A1A);

  /// The high emphasis surface color.
  static const Color highEmphasisSurface = Color(0xE6000000);

  /// The light outline color.
  static const Color outlineLight = Color(0x33000000);

  /// The secondary color of application.
  static const MaterialColor secondary = MaterialColor(0xFF963F6E, <int, Color>{
    50: Color(0xFFFFECF3),
    100: Color(0xFFFFD8E9),
    200: Color(0xFFFFAFD6),
    300: Color(0xFFF28ABE),
    400: Color(0xFFD371A3),
    500: Color(0xFFB55788),
    600: Color(0xFF963F6E),
    700: Color(0xFF7A2756),
    800: Color(0xFF5F0F40),
    900: Color(0xFF3D0026),
  });

  /// The default disabled foreground color.
  static const Color disabledForeground = Color(0x611B1B1B);

  /// The default disabled button color.
  static const Color disabledButton = Color(0x1F000000);

  /// The default disabled surface color.
  static const Color disabledSurface = Color(0xFFE0E0E0);
}
