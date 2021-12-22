import 'package:flutter/material.dart';

class ColorUtil {
  late final Color color;


  static const Color mainColor = Color(0xFF0F2C67);
  static const Color mainAccent = Color(0xFFCD1818);
  static const Color myOrange = Color(0xFFF3950D);
  static const Color myYellow = Color(0xFFF4E185);
  static Color textColor = Colors.black.withOpacity(0.7);

  ColorUtil([int? colorValue]) {
    if (colorValue is int) {
      color = Color(colorValue);
    }
  }

  MaterialColor toMaterial() {
    List strengths = <double>[.05];
    final swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }

  factory ColorUtil.fromColor(Color color) => ColorUtil()..color = color;
}
