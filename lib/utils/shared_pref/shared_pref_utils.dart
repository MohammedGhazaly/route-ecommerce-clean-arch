import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefUtils {
  static late SharedPreferences sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> saveData({required String key, required dynamic value}) {
    if (value is int) {
      return sharedPreferences.setInt(key, value);
    } else if (value is double) {
      return sharedPreferences.setDouble(key, value);
    } else if (value is bool) {
      return sharedPreferences.setBool(key, value);
    } else {
      return sharedPreferences.setString(key, value);
    }
  }

  static Object? getData(String key) {
    return sharedPreferences.get(key);
  }
}
