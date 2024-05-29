import 'package:flutter/material.dart';

class ColorUtils {
  static LinearGradient generateGradient(List<String> hexColors) {
    List<Color> colors = hexColors.map((hex) => Color(int.parse(hex, radix: 16))).toList();

    return LinearGradient(
      colors: colors,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }
}
