import 'package:clean_architecture_with_riverpod/common/dtos/jwt_token_response.dart';

abstract interface class ItokenService {
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  Future<void> saveToken(String accessToken, String refreshToken);
  Future<void> clearToken();
  Future<JwtTokenResponse> refreshToken(String? refreshToken);
}
