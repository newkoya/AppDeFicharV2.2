import 'dart:html' as html;

class CrossPlatformStorage {
  static Future<String?> getString(String key) async {
    return html.window.localStorage[key];
  }

  static Future<void> setString(String key, String value) async {
    html.window.localStorage[key] = value;
  }

  static Future<bool?> getBool(String key) async {
    final val = html.window.localStorage[key];
    return val == 'true';
  }

  static Future<void> setBool(String key, bool value) async {
    html.window.localStorage[key] = value.toString();
  }

  static Future<void> remove(String key) async {
    html.window.localStorage.remove(key);
  }
}