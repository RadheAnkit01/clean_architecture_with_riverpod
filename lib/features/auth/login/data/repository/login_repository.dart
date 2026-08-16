import 'package:clean_architecture_with_riverpod/common/dtos/jwt_token_response.dart';
import 'package:clean_architecture_with_riverpod/core/data/remote/network_service.dart';
import 'package:clean_architecture_with_riverpod/core/data/remote/token/itoken_service.dart';
import 'package:clean_architecture_with_riverpod/core/data/remote/token/token_service.dart';
import 'package:clean_architecture_with_riverpod/features/auth/login/data/dto/request/login_request.dart';
import 'package:clean_architecture_with_riverpod/features/auth/login/data/repository/ilogin_repository.dart';
import 'package:clean_architecture_with_riverpod/features/auth/login/data/source/remote/login_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clean_architecture_with_riverpod/common/exception/failure.dart';
import 'package:clean_architecture_with_riverpod/common/mixin/dio_exception_mapper.dart';

final loginRepositoryProvider = Provider<ILoginRepository>((ref) {
  final loginApi = ref.watch(loginApiProvider);
  final tokenService = ref.watch(
    tokenServiceProvider(ref.watch(networkServiceProvider)),
  );
  return LoginRepository(loginApi: loginApi, tokenService: tokenService);
});

class LoginRepository with DioExceptionMapper implements ILoginRepository {
  final LoginApi _loginApi;
  final ItokenService _tokenService;
  LoginRepository({required this._loginApi, required this._tokenService});
  @override
  Future<JwtTokenResponse> login(LoginRequest data) async {
    try {
      final response = await _loginApi.login(data);
      print("Login Response: $response");
      _tokenService.saveToken(response.accessToken, response.refreshToken);
      print("Saved Access Token: ${await _tokenService.getAccessToken()}");
      print("Saved Refresh Token: ${await _tokenService.getRefreshToken()}");
      return response;
    } on DioException catch (e) {
      throw mapDioExceptionToFailure(e, StackTrace.current);
    } catch (e, s) {
      throw Failure(
        message: "An unexpected error occurred. Please try again later.",
        statusCode: 500,
        exception: e is Exception ? e : Exception(e.toString()),
        stackTrace: s,
      );
    }
  }
}
