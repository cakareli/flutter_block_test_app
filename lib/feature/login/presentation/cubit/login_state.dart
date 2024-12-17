import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial({
    @Default(LoginStatus.signedOut) LoginStatus authStatus,
    @Default(LoginFieldsInputCheck.initial)
    LoginFieldsInputCheck loginFieldsInputCheck,
  }) = _Initial;
}

enum LoginStatus {
  signedId,
  loading,
  signedOut,
}

enum LoginFieldsInputCheck {
  initial,
  failure,
  success,
}
