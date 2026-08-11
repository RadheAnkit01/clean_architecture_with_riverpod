import 'package:clean_architecture_with_riverpod/core/data/remote/network_service.dart';
import 'package:clean_architecture_with_riverpod/features/signup/data/dto/request/sign_up_request.dart';
import 'package:clean_architecture_with_riverpod/features/signup/data/dto/response/sign_up_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'sign_up_api.g.dart';

final signUpApiProvider = Provider<SignUpApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return SignUpApi(dio);
});

@RestApi()
abstract class SignUpApi {
  factory SignUpApi(Dio dio) => _SignUpApi(dio);

  @POST('/api/v1/auth/register')
  Future<SignUpResponse> signUp(@Body() SignUpRequest signUpRequest);
}
