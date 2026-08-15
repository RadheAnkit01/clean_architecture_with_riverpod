import 'package:clean_architecture_with_riverpod/common/dtos/jwt_token_response.dart';
import 'package:clean_architecture_with_riverpod/common/exception/failure.dart';
import 'package:clean_architecture_with_riverpod/features/login/application/ilogin_service.dart';
import 'package:clean_architecture_with_riverpod/features/login/data/dto/request/login_request.dart';
import 'package:clean_architecture_with_riverpod/features/login/data/repository/ilogin_repository.dart';
import 'package:clean_architecture_with_riverpod/features/login/data/repository/login_repository.dart';
import 'package:clean_architecture_with_riverpod/features/login/domain/mapper/ilogin_model_mapper.dart';
import 'package:clean_architecture_with_riverpod/features/login/domain/model/login_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';

final loginServiceProvider = Provider<ILoginService>((ref) {
  final loginRepository = ref.watch(loginRepositoryProvider);
  return LoginService(loginRepository: loginRepository);
});

class LoginService implements ILoginService, ILoginModelMapper {
  final ILoginRepository _loginRepository;

  LoginService({required this._loginRepository});

  @override
  Future<Result<LoginModel, Failure>> login(LoginRequest request) async {
    try {
      final response = await _loginRepository.login(request);
      final model = mapToLoginModel(response);
      return Success(model);
    } on Failure catch (failure) {
      return Error(failure);
    } catch (e) {
      return Error(
        Failure(
          message: "An unexpected error occurred. Please try again later.",
          statusCode: 500,
          exception: e is Exception ? e : Exception(e.toString()),
        ),
      );
    }
  }

  @override
  LoginModel mapToLoginModel(JwtTokenResponse json) {
    return LoginModel(
      accessToken: json.accessToken,
      refreshToken: json.refreshToken,
      firstName: json.firstName,
      phoneNumber: json.phoneNumber,
      isLoginSuccess: true,
    );
  }
}
