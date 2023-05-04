import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class PreferencesServices {
  static getDataPrefs(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String savedData = prefs.getString(key) ?? '{}';
    return json.decode(savedData);
  }

  static setDataPrefs(String key, data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, true);
    prefs.setString(key, json.encode(data));
  }
}
