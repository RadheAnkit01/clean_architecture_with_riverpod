import 'package:clean_architecture_with_riverpod/common/dtos/jwt_token_response.dart';
import 'package:clean_architecture_with_riverpod/features/login/domain/model/login_model.dart';

abstract interface class ILoginModelMapper {
  LoginModel mapToLoginModel(JwtTokenResponse json);
}
