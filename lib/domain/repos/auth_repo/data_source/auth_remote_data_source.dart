import 'package:dartz/dartz.dart';
import 'package:route_e_commerce/data/api/api_manager.dart';
import 'package:route_e_commerce/data/models/response_models/auth_models/register_response_modelDto.dart';
import 'package:route_e_commerce/data/repos/auth_repo/data_source/auth_remote_data_source_impl.dart';
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
}

AuthRemoteDataSource injectAuthRemoteDataSource() {
  return AuthRemoteDataSourceImpl(apiManager: ApiManager.getInstance());
}
