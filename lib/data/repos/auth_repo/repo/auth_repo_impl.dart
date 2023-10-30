import 'package:route_e_commerce/data/models/response_model/register_response_model.dart';
import 'package:route_e_commerce/data/repos/auth_repo/repo/auth_repo.dart';
import 'package:route_e_commerce/data/repos/auth_repo/data_source/auth_remote_data_source.dart';

class AuthRepoImpl implements AuthRepo {
  AuthRemoteDataSource authRemoteDataSource;

  AuthRepoImpl({required this.authRemoteDataSource});

  @override
  Future<RegisterResponseModel> register(
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
