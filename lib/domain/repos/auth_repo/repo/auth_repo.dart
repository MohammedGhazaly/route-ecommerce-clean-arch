import 'package:route_e_commerce/data/models/response_models/auth_models/register_response_modelDto.dart';
import 'package:route_e_commerce/domain/repos/auth_repo/data_source/auth_remote_data_source.dart';
import 'package:route_e_commerce/data/repos/auth_repo/repo/auth_repo_impl.dart';

abstract class AuthRepo {
  Future<RegisterResponseDto> register({
    required String fullName,
    required String phoneNumber,
    required String email,
    required String password,
    required String rePassword,
  });
}

AuthRepo injectAuthRepo() {
  return AuthRepoImpl(authRemoteDataSource: injectAuthRemoteDataSource());
}
