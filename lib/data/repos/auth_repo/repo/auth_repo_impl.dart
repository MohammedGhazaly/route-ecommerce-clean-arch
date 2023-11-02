import 'package:route_e_commerce/data/models/response_models/auth_models/register_response_modelDto.dart';
import 'package:route_e_commerce/domain/repos/auth_repo/repo/auth_repo.dart';
import 'package:route_e_commerce/domain/repos/auth_repo/data_source/auth_remote_data_source.dart';

class AuthRepoImpl implements AuthRepo {
  AuthRemoteDataSource authRemoteDataSource;

  AuthRepoImpl({required this.authRemoteDataSource});

  @override
  Future<RegisterResponseDto> register(
      {required String fullName,
      required String phoneNumber,
      required String email,
      required String password,
      required String rePassword}) {
    return authRemoteDataSource.register(
        fullName: fullName,
        phoneNumber: phoneNumber,
        email: email,
        password: password,
        rePassword: rePassword);
  }
}
