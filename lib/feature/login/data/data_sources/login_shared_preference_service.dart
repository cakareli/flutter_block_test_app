import 'package:shared_preferences/shared_preferences.dart';

class LoginSharedPreferenceService {
  final SharedPreferences _sharedPreferences;

  LoginSharedPreferenceService(this._sharedPreferences);

  Future<void> saveToken(String token) async {
    try {
      _sharedPreferences.setString(tokenKey, token);
    } catch (e) {
      // error handle
    }
  }

  String? getToken() {
    try {
      return _sharedPreferences.getString(tokenKey);
    } catch (e) {
      // error handle
    }
    return null;
  }

  Future<void> removeToken() async {
    await _sharedPreferences.remove(tokenKey);
  }
}

const String tokenKey = 'tokenKey';
