// ignore_for_file: unused_result

import 'package:clean_architecture_with_riverpod/features/signup/application/sign_up_service.dart';
import 'package:clean_architecture_with_riverpod/features/signup/data/dto/request/sign_up_request.dart';
import 'package:clean_architecture_with_riverpod/features/signup/presentation/state/sign_up_state.dart';
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
      state.copyWith(isLoading: true, error: null, isSignUpSuccess: null);
      final formData = SignUpRequest(
        firstName: state.signUpForm["firstName"],
        countryCode: state.signUpForm["countryCode"],
        phoneNumber: state.signUpForm["phoneNumber"],
        gender: state.signUpForm["gender"],
        password: state.signUpForm["password"],
        acceptTerms: state.signUpForm["acceptTerms"],
      );
      final result = await ref.read(signUpServiceProvider).signUp(formData);

      state.copyWith(
        isLoading: false,
        isSignUpSuccess: result.isSignUpSuccess,
        signUpModel: result,
      );
    } catch (e) {
      state.copyWith(
        isLoading: false,
        isSignUpSuccess: null,
        error: e.toString(),
      );
    }
  }
}
