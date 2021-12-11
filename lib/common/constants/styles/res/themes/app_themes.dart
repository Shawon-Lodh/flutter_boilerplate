import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constants/styles/res/app_colors.dart';
import 'package:flutter_boilerplate/common/constants/styles/res/app_fonts.dart';
import 'package:flutter_boilerplate/common/constants/styles/res/text_styles.dart';

class AppThemes {
  AppThemes._();

  //constants color range for light theme
  static const Color _lightPrimaryColor = Colors.black;
  static const Color _lightPrimaryVariantColor = Colors.white;
  static const Color _lightSecondaryColor = Colors.green;
  static const Color _lightOnPrimaryColor = Colors.black;
  static const Color _lightButtonPrimaryColor = Colors.orangeAccent;
  static const Color _lightAppBarColor = Colors.orangeAccent;
  static Color _lightIconColor = Colors.orangeAccent;
  static Color _lightSnackBarBackgroundErrorColor = Colors.redAccent;

  //text theme for light theme
  static final TextStyle _lightScreenHeadingTextStyle =
  TextStyle(fontSize: 20.0, color: _lightOnPrimaryColor);
  static final TextStyle _lightScreenTaskNameTextStyle =
  TextStyle(fontSize: 16.0, color: _lightOnPrimaryColor);
  static final TextStyle _lightScreenTaskDurationTextStyle =
  TextStyle(fontSize: 14.0, color: Colors.grey);
  static final TextStyle _lightScreenButtonTextStyle = TextStyle(
      fontSize: 14.0, color: _lightOnPrimaryColor, fontWeight: FontWeight.w500);
  static final TextStyle _lightScreenCaptionTextStyle = TextStyle(
      fontSize: 12.0, color: _lightAppBarColor, fontWeight: FontWeight.w100);

  static final TextTheme _lightTextTheme = TextTheme(
    headline1: _lightScreenHeadingTextStyle,
    bodyText1: _lightScreenTaskNameTextStyle,
    bodyText2: _lightScreenTaskDurationTextStyle,
    button: _lightScreenButtonTextStyle,
    subtitle1: _lightScreenTaskNameTextStyle,
    subtitle2: _lightScreenTaskNameTextStyle,
    caption: _lightScreenCaptionTextStyle,
  );

  //constants color range for dark theme
  static const Color _darkPrimaryColor = Colors.white;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static const Color _darkSecondaryColor = Colors.white;
  static const Color _darkOnPrimaryColor = Colors.white;
  static const Color _darkButtonPrimaryColor = Colors.deepPurpleAccent;
  static const Color _darkAppBarColor = Colors.deepPurpleAccent;
  static Color _darkIconColor = Colors.deepPurpleAccent;
  static Color _darkSnackBarBackgroundErrorColor = Colors.redAccent;

  //text theme for dark theme
  static final TextStyle _darkScreenHeadingTextStyle =
  _lightScreenHeadingTextStyle.copyWith(color: _darkOnPrimaryColor);
  static final TextStyle _darkScreenTaskNameTextStyle =
  _lightScreenTaskNameTextStyle.copyWith(color: _darkOnPrimaryColor);
  static final TextStyle _darkScreenTaskDurationTextStyle =
      _lightScreenTaskDurationTextStyle;
  static final TextStyle _darkScreenButtonTextStyle = TextStyle(
      fontSize: 14.0, color: _darkOnPrimaryColor, fontWeight: FontWeight.w500);
  static final TextStyle _darkScreenCaptionTextStyle = TextStyle(
      fontSize: 12.0, color: _darkAppBarColor, fontWeight: FontWeight.w100);

  static final TextTheme _darkTextTheme = TextTheme(
    headline1: _darkScreenHeadingTextStyle,
    bodyText1: _darkScreenTaskNameTextStyle,
    bodyText2: _darkScreenTaskDurationTextStyle,
    button: _darkScreenButtonTextStyle,
    subtitle1: _darkScreenTaskNameTextStyle,
    subtitle2: _darkScreenTaskNameTextStyle,
    caption: _darkScreenCaptionTextStyle,
  );

  //the light theme
  static final ThemeData lightTheme = ThemeData(
    fontFamily: AppFonts.productSans,
    scaffoldBackgroundColor: _lightPrimaryVariantColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: _lightButtonPrimaryColor,
    ),
    appBarTheme: AppBarTheme(
      color: _lightAppBarColor,
      iconTheme: IconThemeData(color: _lightOnPrimaryColor),
      textTheme: _lightTextTheme,
    ),
    colorScheme: ColorScheme.light(
      primary: _lightPrimaryColor,
      primaryVariant: _lightPrimaryVariantColor,
      secondary: _lightSecondaryColor,
      onPrimary: _lightOnPrimaryColor,
    ),
    snackBarTheme:
    SnackBarThemeData(backgroundColor: _lightSnackBarBackgroundErrorColor),
    iconTheme: IconThemeData(
      color: _lightIconColor,
    ),
    popupMenuTheme: PopupMenuThemeData(color: _lightAppBarColor),
    textTheme: _lightTextTheme,
    buttonTheme: ButtonThemeData(
        buttonColor: _lightButtonPrimaryColor,
        textTheme: ButtonTextTheme.primary),
    unselectedWidgetColor: _lightPrimaryColor,
    inputDecorationTheme: InputDecorationTheme(
        fillColor: _lightPrimaryColor,
        labelStyle: TextStyle(
          color: _lightPrimaryColor,
        )),
  );

  //the dark theme
  static final ThemeData darkTheme = ThemeData(
    fontFamily: AppFonts.productSans,
    scaffoldBackgroundColor: _darkPrimaryVariantColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: _darkButtonPrimaryColor,
    ),
    appBarTheme: AppBarTheme(
      color: _darkAppBarColor,
      iconTheme: IconThemeData(color: _darkOnPrimaryColor),
      textTheme: _darkTextTheme,
    ),
    colorScheme: ColorScheme.light(
      primary: _darkPrimaryColor,
      primaryVariant: _darkPrimaryVariantColor,
      secondary: _darkSecondaryColor,
      onPrimary: _darkOnPrimaryColor,
    ),
    snackBarTheme:
    SnackBarThemeData(backgroundColor: _darkSnackBarBackgroundErrorColor),
    iconTheme: IconThemeData(
      color: _darkIconColor,
    ),
    popupMenuTheme: PopupMenuThemeData(color: _darkAppBarColor),
    textTheme: _darkTextTheme,
    buttonTheme: ButtonThemeData(
        buttonColor: _darkButtonPrimaryColor,
        textTheme: ButtonTextTheme.primary),
    unselectedWidgetColor: _darkPrimaryColor,
    inputDecorationTheme: InputDecorationTheme(
        fillColor: _darkPrimaryColor,
        labelStyle: TextStyle(
          color: _darkPrimaryColor,
        )),
  );



  static ThemeData appTheme() {
    return ThemeData(
      fontFamily: AppFonts.roboto,
      primaryColor: AppColors.primaryColor,
      backgroundColor: AppColors.backGroundColor,
      scaffoldBackgroundColor: AppColors.white,
      cardTheme: CardTheme(elevation: 1, margin: EdgeInsets.only()),
      indicatorColor: AppColors.primaryColor,
      accentColor: AppColors.primaryColor,
      buttonTheme: ButtonThemeData(),
      tabBarTheme: TabBarTheme(
        labelColor: AppColors.black,
        labelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        unselectedLabelStyle: TextStyle(fontSize: 14),
        indicatorSize: TabBarIndicatorSize.tab,
      ),
      appBarTheme: AppBarTheme(
          color: AppColors.white,
          brightness: Brightness.light,
          elevation: 0,
          textTheme: TextTheme(
            subtitle1: AppTextStyles.medium20Color242424,
          )),
    );
  }
}