import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_model.freezed.dart';

@freezed
abstract class SignUpModel with _$SignUpModel {
  const factory SignUpModel({
    required String firstName,
    String? lastName,
    required String gender,
    required String fullPhoneNumber,
    required bool isSignUpSuccess,
  }) = _SignUpModel;
}
