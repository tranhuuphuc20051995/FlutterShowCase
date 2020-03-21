import 'package:shared_preferences/shared_preferences.dart';

class ConstantsSharePref {
  static const String NEW_USER = 'new_user';
}

enum Type { LIST, STRING, DOUBLE, INT, BOOL }

class SharePreferenceManager {
  static SharedPreferences prefs;

  static Future<void> initSharePreference() async {
    print('SharePreferenceManager.initSharePreference');
    await SharedPreferences.getInstance().then((data) {
      prefs = data;
    });
  }

  static List<String> getPrefsListString(String key) {
    if (prefs != null && prefs.getStringList(key) != null) {
      return prefs.getStringList(key);
    } else {
      return null;
    }
  }

  static Future<bool> getPrefsBool(String key, [bool fallback = false]) async {
    if (prefs == null) {
      prefs = await SharedPreferences.getInstance();
      if (prefs.getBool(key) != null) {
        return prefs.getBool(key);
      } else {
        return fallback;
      }
    } else {
      if (prefs.getBool(key) != null) {
        return prefs.getBool(key);
      } else {
        return fallback;
      }
    }
  }

  static Future getPrefs(String key, Type type) async {
    if (prefs == null) prefs = await SharedPreferences.getInstance();
    if (type == Type.LIST) {
      return prefs.getStringList(key);
    } else if (type == Type.STRING) {
      return prefs.getString(key);
    } else if (type == Type.DOUBLE) {
      return prefs.getDouble(key);
    } else if (type == Type.INT) {
      return prefs.getInt(key);
    } else if (type == Type.BOOL) {
      return prefs.getBool(key);
    }
  }

  static void setPrefs(String key, Type type, dynamic value) {
    if (type == Type.LIST) {
      prefs.setStringList(key, value);
    } else if (type == Type.STRING) {
      prefs.setString(key, value);
    } else if (type == Type.DOUBLE) {
      prefs.setDouble(key, value);
    } else if (type == Type.INT) {
      prefs.setInt(key, value);
    } else if (type == Type.BOOL) {
      prefs.setBool(key, value);
    }
  }

  static void removePrefs(String key) {
    prefs.remove(key);
  }
}
