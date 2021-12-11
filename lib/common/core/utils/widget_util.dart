import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/core/utils/dark_mode_util.dart';

class WidgetUtil {
  static const double imageWidth = 24;

  static Widget errorWidget(BuildContext context, ThemeMode? themeMode, { size = imageWidth }) {
    return DarkModeUtil.isDarkMode(context, themeMode)
        ? Image.asset(
      'assets/images/avatar_loading_light.png',
      width: size,
      height: size,
    )
        : Image.asset(
      'assets/images/avatar_loading_dark.png',
      width: size,
      height: size,
    );
  }
}