import 'package:clean_architecture_with_riverpod/common/http_status/status_code.dart';
import 'package:clean_architecture_with_riverpod/core/data/remote/endpoint.dart';
import 'package:clean_architecture_with_riverpod/core/data/remote/token/itoken_service.dart';
import 'package:clean_architecture_with_riverpod/core/data/remote/token/token_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final networkServiceInterceptorProvider = Provider.autoDispose
    .family<NetworkServiceInterceptor, Dio>((ref, dio) {
      final tokenService = ref.watch(tokenServiceProvider(dio));
      return NetworkServiceInterceptor(itokenService: tokenService, dio: dio);
    });

final class NetworkServiceInterceptor extends Interceptor {
  final ItokenService _itokenService;
  final Dio _dio;
  NetworkServiceInterceptor({required this._itokenService, required this._dio});

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await _itokenService.getAccessToken();
    debugPrint("Access Token: $accessToken");
    options.headers['Content-Type'] = 'application/json';
    options.headers['Accept'] = 'application/json';
    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    //Handle Unauthorize error
    if (err.response?.statusCode == StatusCode.invalidAccessToken &&
        err.requestOptions.path != signUpEndpoint &&
        err.requestOptions.path != loginEndpoint &&
        err.requestOptions.path != refreshTokenEndpoint) {
      final token = await _itokenService.getRefreshToken();

      try {
        final result = await _itokenService.refreshToken(token);

        final accessToken = result.accessToken;
        final refreshToken = result.refreshToken;
        _itokenService.saveToken(accessToken, refreshToken);

        final options = err.requestOptions;
        //update request headers with new access token;
        options.headers["Authorization"] = 'Bearer $accessToken';
        //repeat the request
        return handler.resolve(await _dio.fetch(options));
      } on DioException catch (e) {
        if (e.response?.statusCode == StatusCode.invalidRefreshToken) {
          _itokenService.clearToken();
          // err.response?.statusCode = StatusCode.invalidRefreshToken;
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
