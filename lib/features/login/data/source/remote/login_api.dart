import 'package:clean_architecture_with_riverpod/common/dtos/jwt_token_response.dart';
import 'package:clean_architecture_with_riverpod/core/data/remote/endpoint.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clean_architecture_with_riverpod/core/data/remote/network_service.dart';
import 'package:clean_architecture_with_riverpod/features/login/data/dto/request/login_request.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'login_api.g.dart';

final loginApiProvider = Provider<LoginApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return LoginApi(dio);
});

@RestApi()
abstract class LoginApi {
  factory LoginApi(Dio dio) => _LoginApi(dio);

  @POST(loginEndpoint)
  Future<JwtTokenResponse> login(@Body() LoginRequest loginRequest);
}
