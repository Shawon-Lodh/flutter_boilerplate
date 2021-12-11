import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constants/styles/res/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const _lightFillColor = Colors.black;

  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);

  static ThemeData lightThemeData =
  themeData(lightColorScheme, _lightFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: _textTheme,
      iconTheme: IconThemeData(color: Colors.white),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      accentColor: colorScheme.primary,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      focusColor: AppColors.primaryColor,
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Color(0xFFFF6673),
    primaryVariant: Color(0xFF117378),
    secondary: Color(0xFFEFF3F3),
    secondaryVariant: Color(0xFFFAFBFB),
    background: Color(0xFFE6EBEB),
    surface: Color(0xFFFAFBFB),
    onBackground: Colors.white,
    error: _lightFillColor,
    onError: _lightFillColor,
    onPrimary: _lightFillColor,
    onSecondary: Color(0xFF322942),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const _superBold = FontWeight.w900;
  static const _bold = FontWeight.w700;
  static const _semiBold = FontWeight.w600;
  static const _medium = FontWeight.w500;
  static const _regular = FontWeight.w400;
  static const _light = FontWeight.w300;

  static final TextTheme _textTheme = TextTheme(
    headline1: GoogleFonts.roboto(
      fontSize: 96,
      color: Colors.red,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headline2: GoogleFonts.poppins(
      fontSize: 60,
      color: Colors.red,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headline3: GoogleFonts.poppins(
      fontSize: 48,
      color: Colors.red,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headline4: GoogleFonts.poppins(
      fontSize: 34,
      color: Colors.red,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headline5: GoogleFonts.poppins(
      fontSize: 24,
      color: Colors.red,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headline6: GoogleFonts.poppins(
      fontSize: 20,
      color: Colors.red,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    subtitle1: GoogleFonts.poppins(
      fontSize: 16,
      color: Colors.red,
      fontWeight: _semiBold,
      fontStyle: FontStyle.normal,
    ),
    subtitle2: GoogleFonts.poppins(
      fontSize: 14,
      color: Colors.red,
      fontWeight: _semiBold,
      fontStyle: FontStyle.normal,
    ),
    bodyText1: GoogleFonts.poppins(
      fontSize: 16,
      color: Colors.red,
      fontWeight: _light,
      fontStyle: FontStyle.normal,
    ),
    bodyText2: GoogleFonts.poppins(
      fontSize: 14,
      color: Colors.red,
      fontWeight: _light,
      fontStyle: FontStyle.normal,
    ),
    button: GoogleFonts.poppins(
      fontSize: 14,
      color: Colors.red,
      fontStyle: FontStyle.normal,
      fontWeight: _medium,
    ),
    caption: GoogleFonts.poppins(
      fontSize: 12,
      color: AppColors.white,
      fontWeight: _regular,
      fontStyle: FontStyle.normal,
    ),
  );
}