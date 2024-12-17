import 'package:flutter_block_test_app/feature/login/data/data_sources/login_shared_preference_service.dart';
import 'package:injectable/injectable.dart';

abstract class LoginDataSource {
  Future<void> login({required String username, required String password});
  Future<void> logout();
}

@lazySingleton
class LoginDataSourceImpl implements LoginDataSource {
  final LoginSharedPreferenceService _loginSharedPreferenceService;

  LoginDataSourceImpl(this._loginSharedPreferenceService);

  @override
  Future<void> login(
      {required String username, required String password}) async {
    try {
      String? token = _loginSharedPreferenceService.getToken();
      if (token != null) {
        return;
      }
      // login api call
      _loginSharedPreferenceService.saveToken('token123');
    } catch (e) {
      //error handle
      rethrow;
    }
  }

  @override
  Future<void> logout() async {}
}
