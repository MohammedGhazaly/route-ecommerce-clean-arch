import 'package:dartz/dartz.dart';
import 'package:route_e_commerce/domain/entity/auth_entity/auth_result_entity.dart';
import 'package:route_e_commerce/domain/entity/failures.dart';
import 'package:route_e_commerce/domain/repos/auth_repo/repo/auth_repo.dart';

class RegisterUseCase {
  AuthRepo authRepo;
  RegisterUseCase({required this.authRepo});

  Future<Either<Failures, AuthResultEntity>> invoke({
    required String fullName,
    required String phoneNumber,
    required String email,
    required String password,
    required String rePassword,
  }) {
    return authRepo.register(
        fullName: fullName,
        phoneNumber: phoneNumber,
        email: email,
        password: password,
        rePassword: rePassword);
  }
}
