import 'package:clean_architecture_with_riverpod/common/exception/failure.dart';
import 'package:clean_architecture_with_riverpod/features/login/data/dto/request/login_request.dart';
import 'package:clean_architecture_with_riverpod/features/login/domain/model/login_model.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class ILoginService {
  Future<Result<LoginModel, Failure>> login(LoginRequest request);
}
