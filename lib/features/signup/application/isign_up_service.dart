import 'package:clean_architecture_with_riverpod/features/signup/data/dto/request/sign_up_request.dart';
import 'package:clean_architecture_with_riverpod/features/signup/domain/model/sign_up_model.dart';

abstract interface class IsignUpService {
  Future<SignUpModel> signUp(SignUpRequest request);
}
