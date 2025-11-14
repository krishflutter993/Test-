import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static const _keyLogin = 'isLoggedIn';
  static const _keyFirstName = 'firstName';
  static const _keyLastName = 'lastName';
  static const _keyEmail = 'email';

  /// Save login status
  static Future<void> setLogin(bool status) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyLogin, status);
  }

  /// Check if logged in
  static Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyLogin) ?? false;
  }

  /// Save user details
  static Future<void> saveUser({
    required String firstName,
    required String lastName,
    required String email,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyFirstName, firstName);
    await prefs.setString(_keyLastName, lastName);
    await prefs.setString(_keyEmail, email);
    await prefs.setBool(_keyLogin, true);
  }

  /// Get saved user info
  static Future<Map<String, String?>> getUser() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      'firstName': prefs.getString(_keyFirstName),
      'lastName': prefs.getString(_keyLastName),
      'email': prefs.getString(_keyEmail),
    };
  }

  /// Logout
  static Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
