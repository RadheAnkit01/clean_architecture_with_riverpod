import 'package:clean_architecture_with_riverpod/features/auth/signup/domain/model/sign_up_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  factory SignUpState({
    SignUpModel? signUpModel,
    bool? isSignUpSuccess,
    @Default(false) bool isLoading,
    String? error,
    @Default({}) Map<String, dynamic> signUpForm,
  }) = _SignUpState;

  // factory SignUpState.fromJson(Map<String, dynamic> json) =>
  //     _$SignUpStateFromJson(json);
  // Map<String, dynamic> toJson() => _$SignUpStateToJson(this);
}
