import 'package:clean_architecture_with_riverpod/common/dtos/jwt_token_response.dart';
import 'package:clean_architecture_with_riverpod/common/http_status/status_code.dart';
import 'package:clean_architecture_with_riverpod/core/data/local/secure_storage/isecure_storage.dart';
import 'package:clean_architecture_with_riverpod/core/data/local/secure_storage/secure_storage.dart';
import 'package:clean_architecture_with_riverpod/core/data/local/secure_storage/secure_storage_const.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final networkServiceInterceptorProvider = Provider.autoDispose
    .family<NetworkServiceInterceptor, Dio>((ref, dio) {
      final secureStorage = ref.watch(secureStorageProvider);
      return NetworkServiceInterceptor(secureStorage: secureStorage, dio: dio);
    });

final class NetworkServiceInterceptor extends Interceptor {
  final ISecureStorage _secureStorage;
  final Dio _dio;
  NetworkServiceInterceptor({required this._secureStorage, required this._dio});

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await _secureStorage.read(accessTokenKey);

    options.headers['Content-Type'] = 'application/json';
    options.headers['Accept'] = 'application/json';
    options.headers['Authorization'] = 'Bearer $accessToken';

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    //Handle Unauthorize error
    if (err.response?.statusCode == StatusCode.invalidAccessToken) {
      final token = await _secureStorage.read(refreshTokenKey);

      try {
        final response = await _dio.post<Map<String, dynamic>>(
          "/api/v1/auth/refresh",
          data: {"refreshToken": token},
        );

        final json = response.data;
        final result = JwtTokenResponse.fromJson(json ?? {});
        final statusCode = response.statusCode;

        if (statusCode == StatusCode.ok) {
          final accessToken = result.accessToken;
          final refreshToken = result.refreshToken;

          await _secureStorage.write(accessTokenKey, accessToken);
          await _secureStorage.write(refreshTokenKey, refreshToken);

          final options = err.requestOptions;
          //update request headers with new access token;
          options.headers["Authorization"] = 'Bearer $accessToken';
          //repeat the request
          return handler.resolve(await _dio.fetch(options));
        }
      } on DioException catch (e) {
        if (e.response?.statusCode == StatusCode.invalidRefreshToken) {
          await _secureStorage.delete(accessTokenKey);
          await _secureStorage.delete(refreshTokenKey);

          err.response?.statusCode = StatusCode.invalidRefreshToken;
          return handler.next(err);
        }

        // continue with the error
        return handler.next(err);
      }
    }
    // continue with the error
    return handler.next(err);
  }
}
