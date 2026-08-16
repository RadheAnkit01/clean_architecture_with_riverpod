import 'package:clean_architecture_with_riverpod/features/auth/signup/data/dto/response/sign_up_response.dart';
import 'package:clean_architecture_with_riverpod/features/auth/signup/domain/model/sign_up_model.dart';

abstract interface class IsignUpModelMapper {
  SignUpModel mapToSignUpModel(SignUpResponse json);
}
