import 'package:flutter_boilerplate/data/preferences/by_shared_preferences/other_shared_preferences_file.dart';

class PreferenceRepository {
  Preferences? _preference;

  PreferenceRepository() {
    _preference = Preferences();
  }

  void loginUser() {
    _preference!.setBool(Preferences.login, true);
  }

  void logOutUser() {
    _preference!.setBool(Preferences.login, false);
  }

  Future<bool> isUserLogged() => _preference!.getBool(Preferences.login);

  Future<bool> getOnBoardingStatus() =>
      _preference!.getBool(Preferences.onBoarding);

  void setOnBoardingStatus() =>
      _preference!.setBool(Preferences.onBoarding, true);

  Future<String> getDeviceToken() {
    return _preference!.getString(Preferences.deviceToken);
  }

  void setDeviceToken(String deviceToken) {
    _preference!.setString(Preferences.deviceToken, deviceToken);
  }


  /// comment out when localization will be added
  // Future<Locale> fetchLocale() async {
  //   var _appLocale = Locale(AppLocalizations.langEnglish);
  //   var languageCode = await _preference.getString(Preferences.languageCode);
  //   if (languageCode.isEmpty) {
  //     _appLocale = Locale(AppLocalizations.langEnglish);
  //   } else {
  //     _appLocale = Locale(languageCode);
  //   }
  //   return _appLocale;
  // }
}