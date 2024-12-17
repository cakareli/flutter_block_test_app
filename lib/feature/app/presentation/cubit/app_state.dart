import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial({
    @Default('') String userId,
    @Default('') String token,
    @Default('') String refreshToken,
    @Default('') String username,
    @Default('') String exceptionError,
    @Default(AuthStatus.signedOut) AuthStatus authStatus,
  }) = _Initial;
}

enum AuthStatus {
  signedId,
  signedOut,
}
