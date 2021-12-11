import 'package:flutter_boilerplate/common/core/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  Future<SharedPreferences>? _sharedPreference;
  static const String is_dark_mode = "is_dark_mode";
  static const String language_code = "language_code";

  static const _token = '_token';
  static const _introKey = '_introKey';

  static const _authKey = '_authKey';

  SharedPreferenceHelper() {
    _sharedPreference = SharedPreferences.getInstance();
  }

  //Theme module
  Future<void> changeTheme(bool value) {
    return _sharedPreference!.then((prefs) {
      return prefs.setBool(is_dark_mode, value);
    });
  }

  Future<bool> get isDarkMode {
    return _sharedPreference!.then((prefs) {
      return prefs.getBool(is_dark_mode) ?? false;
    });
  }

  //Locale module
  Future<String>? get appLocale {
    return _sharedPreference?.then((prefs) {
      return prefs.getString(language_code) ?? 'en';
    });
  }

  Future<void> changeLanguage(String value) {
    return _sharedPreference!.then((prefs) {
      return prefs.setString(language_code, value);
    });
  }

  static final String _authToken = "authToken";
  static final String _customURL = "customURL";

  static Future<String?> getAuthToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_authToken);
  }

  //Returns empty String if token is not set
  static Future<String> getAuthTokenWithNullCheck() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_authToken) ?? "";
  }

  static Future<bool> setAuthToken(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(_authToken, value);
  }

  static Future<bool> clearAuthToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(_authToken);
  }

  static Future<String?> getCustomURL() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_customURL);
  }

  static Future<bool> setCustomURL(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(_customURL, value);
  }

  //Get authKey
  static Future<String> getApiTokenKey() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getString(_authKey) ?? "";
    } catch (e) {
      Helper.printLogValue(e);
      return "";
    }
  }

  //Set authKey
  static void setApiTokenKey(String apiTokenKey) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_authKey, apiTokenKey);
  }

  static void removeApiTokenKey() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(_authKey);
  }

  //Get intro
  static Future<bool> isSeenIntro() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_introKey) ?? false;
    } catch (e) {
      logger.e(e);
      return false;
    }
  }

  //Set intro
  static void setSeenIntro({isSeen = true}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_introKey, isSeen ?? true);
  }
}