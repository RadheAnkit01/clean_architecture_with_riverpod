import 'package:clean_architecture_with_riverpod/features/signup/data/dto/request/sign_up_request.dart';
import 'package:clean_architecture_with_riverpod/features/signup/data/dto/response/sign_up_response.dart';
import 'package:clean_architecture_with_riverpod/features/signup/data/repository/isign_up_repository.dart';
import 'package:clean_architecture_with_riverpod/features/signup/data/source/remote/sign_up_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signUpRepositoryProvider = Provider<IsignUpRepository>((ref) {
  final signUpApi = ref.watch(signUpApiProvider);
  return SignUpRepository(signUpApi: signUpApi);
});

class SignUpRepository implements IsignUpRepository {
  final SignUpApi _signUpApi;

  SignUpRepository({required this._signUpApi});

  @override
  Future<SignUpResponse> signUp(SignUpRequest data) async {
    try {
      final response = await _signUpApi.signUp(data);
      return response;
    } on DioException catch (_) {
      rethrow;
    }
  }
}
