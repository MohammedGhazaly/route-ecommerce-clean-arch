import 'package:dartz/dartz.dart';
import 'package:route_e_commerce/domain/entity/auth_entity/auth_result_entity.dart';
import 'package:route_e_commerce/domain/entity/failures.dart';
import 'package:route_e_commerce/domain/repos/auth_repo/repo/auth_repo.dart';

class LoginUseCase {
  AuthRepo authRepo;
  LoginUseCase({required this.authRepo});

  Future<Either<Failures, AuthResultEntity>> invoke({
    required String email,
    required String password,
  }) {
    return authRepo.login(
      email: email,
      password: password,
    );
  }
}
