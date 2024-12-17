import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block_test_app/feature/login/domain/repository/login_repository.dart';
import 'package:flutter_block_test_app/feature/login/presentation/cubit/login_state.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(
      {@Named('LoginRepository') required LoginRepository loginRepository})
      : _loginRepository = loginRepository,
        super(const LoginState.initial());

  final LoginRepository _loginRepository;

  Future<void> checkAuth() async {
    emit(state.copyWith(authStatus: LoginStatus.loading));
    final response = await _loginRepository.checkAuth();
    response.fold((l) {
      emit(state.copyWith(authStatus: LoginStatus.signedOut));
    }, (r) {
      if (r != null) {
        emit(state.copyWith(authStatus: LoginStatus.signedId));
      } else {
        emit(state.copyWith(authStatus: LoginStatus.signedOut));
      }
    });
  }

  Future<void> login(
      {required String username, required String password}) async {
    emit(state.copyWith(
      authStatus: LoginStatus.loading,
      loginFieldsInputCheck: LoginFieldsInputCheck.initial,
    ));
    final response =
        await _loginRepository.login(username: username, password: password);
    response.fold((l) {
      emit(state.copyWith(
        authStatus: LoginStatus.signedOut,
        loginFieldsInputCheck: LoginFieldsInputCheck.failure,
      ));
    }, (r) {
      emit(state.copyWith(
        authStatus: LoginStatus.signedId,
        loginFieldsInputCheck: LoginFieldsInputCheck.success,
      ));
    });
  }

  Future<void> logout() async {
    final response = await _loginRepository.logout();
    response.fold(
      (l) {},
      (r) {
        emit(state.copyWith(
          authStatus: LoginStatus.signedOut,
        ));
      },
    );
  }
}
