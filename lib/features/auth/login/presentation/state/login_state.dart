import 'package:clean_architecture_with_riverpod/features/auth/login/domain/model/login_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  factory LoginState({
    LoginModel? loginModel,
    bool? isLoginSuccess,
    @Default(false) bool isLoading,
    String? error,
    @Default({}) Map<String, dynamic> loginForm,
  }) = _LoginState;
}
