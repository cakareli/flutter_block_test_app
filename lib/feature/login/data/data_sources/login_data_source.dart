import 'package:flutter_block_test_app/core/network/failures.dart';
import 'package:flutter_block_test_app/feature/login/data/data_sources/login_shared_preference_service.dart';
import 'package:injectable/injectable.dart';

abstract class LoginDataSource {
  Future<String?> checkAuth();
  Future<void> login({required String username, required String password});
  Future<void> logout();
}

@LazySingleton(as: LoginDataSource)
class LoginDataSourceImpl implements LoginDataSource {
  final LoginSharedPreferenceService _loginSharedPreferenceService;

  LoginDataSourceImpl(this._loginSharedPreferenceService);

  @override
  Future<String?> checkAuth() async {
    try {
      String? token = _loginSharedPreferenceService.getToken();
      await Future.delayed(const Duration(seconds: 2));
      return token;
    } catch (e) {
      //error handle
      rethrow;
    }
  }

  @override
  Future<void> login(
      {required String username, required String password}) async {
    try {
      // login api call
      await Future.delayed(const Duration(seconds: 2));
      if (username != 'test' && password != 'test') {
        throw const UnauthorizedFailure('Invalid credentials');
      }

      _loginSharedPreferenceService.saveToken('token123');
    } catch (e) {
      //error handle
      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    try {
      // login api call
      await _loginSharedPreferenceService.removeToken();
    } catch (e) {
      //error handle
      rethrow;
    }
  }
}
