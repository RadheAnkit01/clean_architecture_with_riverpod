import 'package:clean_architecture_with_riverpod/common/dtos/jwt_token_response.dart';
import 'package:clean_architecture_with_riverpod/features/login/data/dto/request/login_request.dart';

abstract interface class ILoginRepository {
  Future<JwtTokenResponse> login(LoginRequest data);
}
