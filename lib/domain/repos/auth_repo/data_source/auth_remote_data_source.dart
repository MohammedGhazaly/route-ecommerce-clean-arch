import 'package:dartz/dartz.dart';
import 'package:route_e_commerce/domain/entity/auth_result_entity.dart';
import 'package:route_e_commerce/domain/entity/failures.dart';

abstract class AuthRemoteDataSource {
  Future<Either<Failures, AuthResultEntity>> register({
    required String fullName,
    required String phoneNumber,
    required String email,
    required String password,
    required String rePassword,
  });
  Future<Either<Failures, AuthResultEntity>> login({
    required String email,
    required String password,
  });
}
