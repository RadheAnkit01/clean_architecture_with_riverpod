import 'package:freezed_annotation/freezed_annotation.dart';

part 'jwt_token_response.freezed.dart';
part 'jwt_token_response.g.dart';

@freezed
abstract class JwtTokenResponse with _$JwtTokenResponse {
  const factory JwtTokenResponse({
    @JsonKey(name: "accessToken") required String accessToken,
    @JsonKey(name: "refreshToken") required String refreshToken,
    @JsonKey(name: "phoneNumber") required String phoneNumber,
  }) = _JwtTokenResponse;

  factory JwtTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$JwtTokenResponseFromJson(json);
}
