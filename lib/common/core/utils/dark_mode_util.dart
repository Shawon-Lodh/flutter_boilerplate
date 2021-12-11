import 'package:flutter/material.dart';

class DarkModeUtil {
  static bool isDarkMode(BuildContext context, ThemeMode? darkMode) {
    var isDarkMode =
        MediaQuery.platformBrightnessOf(context) == Brightness.dark;
    return darkMode == ThemeMode.dark ||
        (darkMode == ThemeMode.system && isDarkMode);
  }

  static Color darkModeColor(BuildContext context, ThemeMode? darkMode) {
    return isDarkMode(context, darkMode) ? Colors.white : Colors.black;
  }
}