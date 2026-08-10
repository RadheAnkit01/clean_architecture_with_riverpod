import 'package:clean_architecture_with_riverpod/common/dtos/jwt_token_response.dart';
import 'package:clean_architecture_with_riverpod/common/http_status/status_code.dart';
import 'package:clean_architecture_with_riverpod/core/data/local/secure_storage/isecure_storage.dart';
import 'package:clean_architecture_with_riverpod/core/data/local/secure_storage/secure_storage.dart';
import 'package:clean_architecture_with_riverpod/core/data/local/secure_storage/secure_storage_const.dart';
import 'package:clean_architecture_with_riverpod/core/data/remote/token/itoken_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tokenServiceProvider = Provider.autoDispose.family<ItokenService, Dio>((
  ref,
  dio,
) {
  final secureStorage = ref.watch(secureStorageProvider);
  return TokenService(dio: dio, secureStorage: secureStorage);
});

class TokenService implements ItokenService {
  final Dio _dio;
  final ISecureStorage _secureStorage;

  TokenService({required this._dio, required this._secureStorage});

  @override
  Future<void> clearToken() async {
    await _secureStorage.delete(accessTokenKey);
    await _secureStorage.delete(refreshTokenKey);
  }

  @override
  Future<String?> getAccessToken() async {
    return await _secureStorage.read(accessTokenKey);
  }

  @override
  Future<String?> getRefreshToken() async {
    return await _secureStorage.read(refreshTokenKey);
  }

  @override
  Future<JwtTokenResponse> refreshToken(String? refreshToken) async {
    final response = await _dio.post<Map<String, dynamic>>(
      "/api/v1/auth/refresh",
      data: {"refreshToken": refreshToken},
    );

    if (response.statusCode == StatusCode.ok) {
      return JwtTokenResponse.fromJson(response.data ?? {});
    } else {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
      );
    }
  }

  @override
  Future<void> saveToken(String accessToken, String refreshToken) async {
    await _secureStorage.write(accessTokenKey, accessToken);
    await _secureStorage.write(refreshTokenKey, refreshToken);
  }
}
