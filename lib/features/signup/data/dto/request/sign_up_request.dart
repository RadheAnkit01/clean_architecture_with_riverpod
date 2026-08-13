import 'package:clean_architecture_with_riverpod/core/model/country_code_model.dart';
import 'package:clean_architecture_with_riverpod/core/model/gender_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_request.freezed.dart';
part 'sign_up_request.g.dart';

@freezed
abstract class SignUpRequest with _$SignUpRequest {
  const factory SignUpRequest({
    @JsonKey(name: 'firstName') required String firstName,

    @JsonKey(name: 'lastName') String? lastName,

    @CountryCodeConverter()
    @JsonKey(name: 'countryCode')
    required CountryCode countryCode,

    @JsonKey(name: 'phoneNumber') required String phoneNumber,

    @JsonKey(name: 'email') String? email,

    @GenderConverter() @JsonKey(name: 'gender') required Gender gender,

    @JsonKey(name: 'password') required String password,

    @JsonKey(name: 'acceptTerms') required bool acceptTerms,
  }) = _SignUpRequest;

  factory SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);
}
