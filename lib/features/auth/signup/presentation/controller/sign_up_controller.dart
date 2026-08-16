// ignore_for_file: unused_result

import 'package:clean_architecture_with_riverpod/features/auth/signup/application/sign_up_service.dart';
import 'package:clean_architecture_with_riverpod/features/auth/signup/data/dto/request/sign_up_request.dart';
import 'package:clean_architecture_with_riverpod/features/auth/signup/presentation/state/sign_up_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signUpControllerProvider =
    NotifierProvider.autoDispose<SignUpController, SignUpState>(
      SignUpController.new,
    );

class SignUpController extends Notifier<SignUpState> {
  @override
  SignUpState build() {
    return SignUpState();
  }

  Future<void> signUp() async {
    try {
      // Update the state to indicate that the sign-up process has started
      state = state.copyWith(
        isLoading: true,
        error: null,
        isSignUpSuccess: null,
      );
      // Create a SignUpRequest object using the form data from the state
      final formData = SignUpRequest(
        firstName: state.signUpForm["firstName"],
        lastName: state.signUpForm["lastName"],
        email: state.signUpForm["email"],
        countryCode: state.signUpForm["countryCode"],
        phoneNumber: state.signUpForm["phoneNumber"],
        gender: state.signUpForm["gender"],
        password: state.signUpForm["password"],
        acceptTerms: state.signUpForm["acceptTerms"],
      );
      // Call the signUp method from the SignUpService and handle the result
      final result = await ref.read(signUpServiceProvider).signUp(formData);

      result.when(
        (success) {
          // if (!ref.mounted) return;
          state = state.copyWith(
            isLoading: false,
            isSignUpSuccess: success.isSignUpSuccess,
            signUpModel: success,
          );
        },
        (failure) {
          // if (!ref.mounted) return;
          state = state.copyWith(
            isLoading: false,
            isSignUpSuccess: null,
            error: failure.message,
          );
        },
      );

      // if (!ref.mounted) return;
    } catch (e) {
      // if (!ref.mounted) return;
      state = state.copyWith(
        isLoading: false,
        isSignUpSuccess: null,
        error: e.toString(),
      );
    }
  }

  void setFormData(Map<String, dynamic> formData) {
    state = state.copyWith(signUpForm: formData);
  }
}
