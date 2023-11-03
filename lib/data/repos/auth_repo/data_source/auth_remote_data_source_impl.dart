import 'package:dartz/dartz.dart';
import 'package:route_e_commerce/data/api/api_manager.dart';
import 'package:route_e_commerce/domain/entity/auth_result_entity.dart';
import 'package:route_e_commerce/domain/entity/failures.dart';
import 'package:route_e_commerce/domain/repos/auth_repo/data_source/auth_remote_data_source.dart';
import 'package:route_e_commerce/data/models/response_models/auth_models/register/register_response_modelDto.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  ApiManager apiManager;
  AuthRemoteDataSourceImpl({required this.apiManager});
  @override
  Future<Either<Failures, AuthResultEntity>> register(
      {required String fullName,
      required String phoneNumber,
      required String email,
      required String password,
      required String rePassword}) async {
    var either = await apiManager.register(
        fullName: fullName,
        phoneNumber: phoneNumber,
        email: email,
        password: password,
        rePassword: rePassword);
    return either.fold((l) {
      return Left(l);
    }, (r) {
      return Right();
    });
  }
}
