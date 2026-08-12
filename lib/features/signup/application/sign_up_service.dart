import 'package:clean_architecture_with_riverpod/features/signup/application/isign_up_service.dart';
import 'package:clean_architecture_with_riverpod/features/signup/data/dto/request/sign_up_request.dart';
import 'package:clean_architecture_with_riverpod/features/signup/data/dto/response/sign_up_response.dart';
import 'package:clean_architecture_with_riverpod/features/signup/data/repository/isign_up_repository.dart';
import 'package:clean_architecture_with_riverpod/features/signup/data/repository/sign_up_repository.dart';
import 'package:clean_architecture_with_riverpod/features/signup/domain/mapper/isign_up_model_mapper.dart';
import 'package:clean_architecture_with_riverpod/features/signup/domain/model/sign_up_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isgnUpServiceProvider = Provider<IsignUpService>((ref) {
  final signUpRepository = ref.watch(signUpRepositoryProvider);
  return SignUpService(signUpRepository: signUpRepository);
});

final class SignUpService implements IsignUpService, IsignUpModelMapper {
  final IsignUpRepository _signUpRepository;

  SignUpService({required this._signUpRepository});

  @override
  Future<SignUpModel> signUp(SignUpRequest data) async {
    try {
      final response = await _signUpRepository.signUp(data);
      final model = mapToSignUpModel(response);
      return model;
    } catch (e) {
      rethrow;
    }
  }

  @override
  SignUpModel mapToSignUpModel(SignUpResponse json) {
    return SignUpModel(
      firstName: json.firstName,
      gender: json.gender,
      fullPhoneNumber: json.fullPhoneNumber,
      isSignUpSuccess: true,
    );
  }
}
