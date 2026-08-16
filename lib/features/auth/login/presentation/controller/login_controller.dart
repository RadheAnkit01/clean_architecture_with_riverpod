import 'package:clean_architecture_with_riverpod/features/auth/login/application/login_service.dart';
import 'package:clean_architecture_with_riverpod/features/auth/login/data/dto/request/login_request.dart';
import 'package:clean_architecture_with_riverpod/features/auth/login/presentation/state/login_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginControllerProvider =
    NotifierProvider.autoDispose<LoginController, LoginState>(
      LoginController.new,
    );

class LoginController extends Notifier<LoginState> {
  @override
  LoginState build() {
    return LoginState();
  }

  Future<void> login() async {
    try {
      // Update the state to indicate that the sign-up process has started
      state = state.copyWith(
        isLoading: true,
        error: null,
        isLoginSuccess: null,
      );
      // Create a LoginRequest object using the form data from the state
      final formData = LoginRequest(
        fullPhoneNumber: state.loginForm["fullPhoneNumber"],
        password: state.loginForm["password"],
      );
      // Call the login method from the LoginService and handle the result
      final result = await ref.read(loginServiceProvider).login(formData);

      result.when(
        (success) {
          // if (!ref.mounted) return;
          state = state.copyWith(
            isLoading: false,
            isLoginSuccess: success.isLoginSuccess,
            loginModel: success,
          );
        },
        (failure) {
          // if (!ref.mounted) return;
          state = state.copyWith(
            isLoading: false,
            isLoginSuccess: null,
            error: failure.message,
          );
        },
      );

      // if (!ref.mounted) return;
    } catch (e) {
      // if (!ref.mounted) return;
      state = state.copyWith(
        isLoading: false,
        isLoginSuccess: null,
        error: e.toString(),
      );
    }
  }

  void setFormData(Map<String, dynamic> formData) {
    state = state.copyWith(loginForm: formData);
  }
}
