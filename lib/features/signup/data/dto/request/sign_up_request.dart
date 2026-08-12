import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_request.freezed.dart';
part 'sign_up_request.g.dart';

enum Gender { male, female, other }

enum Country { india, usa, uk, canada }

@freezed
abstract class SignUpRequest with _$SignUpRequest {
  const factory SignUpRequest({
    @JsonKey(name: 'firstName') required String firstName,

    @JsonKey(name: 'lastName') String? lastName,

    @JsonKey(name: 'countryCode') required String countryCode,

    @JsonKey(name: 'phoneNumber') required String phoneNumber,

    @JsonKey(name: 'email') String? email,

    @JsonKey(name: 'gender') required Gender gender,

    @JsonKey(name: 'password') required String password,

    @JsonKey(name: 'acceptTerms') required bool acceptTerms,
  }) = _SignUpRequest;

  factory SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);
}
