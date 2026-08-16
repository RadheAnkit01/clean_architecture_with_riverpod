import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_response.freezed.dart';
part 'sign_up_response.g.dart';

@freezed
abstract class SignUpResponse with _$SignUpResponse {
  const factory SignUpResponse({
    @JsonKey(name: "firstName") required String firstName,
    @JsonKey(name: "lastName") String? lastName,
    @JsonKey(name: "gender") required String gender,
    @JsonKey(name: "fullPhoneNumber") required String fullPhoneNumber,
    @JsonKey(name: "countryName") required String countryName,
  }) = _SignUpResponse;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}
