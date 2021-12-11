import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class CacheUtil {

  static Future<bool> removeCache(String key) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.remove(key);
  }

  static Future<bool> clearCache(String key) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.clear();
  }

  static Future<bool> setCache(String key, dynamic data) async {
    var prefs = await SharedPreferences.getInstance();
    var datas = {
      'data': data,
      'timestamp': DateTime.now().millisecondsSinceEpoch
    };
    return await prefs.setString(
        key, json.encode(datas));
  }

  static Future<T?> getCache<T>(
      String key, {
        int times = 2 * 60 * 60 * 1000,
        bool checkValidTimes = true,
        T? defaultValue,
        Function(dynamic dataList)? converter,
      }) async {
    var prefs = await SharedPreferences.getInstance();
    var data = prefs.getString(key);
    if (data == null || data.isEmpty) return defaultValue;
    var mapData = (json.decode(data) as Map);
    var timestamp = mapData['timestamp'];
    if (checkValidTimes && (DateTime.now().millisecondsSinceEpoch - timestamp) > times) {
      return defaultValue;
    }
    var dataList = mapData['data'];
    if(dataList == null && defaultValue != null) {
      return defaultValue;
    }
    return converter == null || dataList == null ? dataList : converter(dataList);
  }
}

dynamic myEncode(dynamic item) {
  // TODO: do something.
  return item;
}