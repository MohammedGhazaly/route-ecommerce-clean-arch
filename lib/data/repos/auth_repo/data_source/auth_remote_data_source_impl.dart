import 'package:route_e_commerce/data/api/api_manager.dart';
import 'package:route_e_commerce/data/models/response_models/auth_models/register_response_model.dart';
import 'package:route_e_commerce/domain/repos/auth_repo/data_source/auth_remote_data_source.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  ApiManager apiManager;
  AuthRemoteDataSourceImpl({required this.apiManager});
  @override
  Future<RegisterResponseModel> register(
      {required String fullName,
      required String phoneNumber,
      required String email,
      required String password,
      required String rePassword}) async {
    return await apiManager.register(
      fullName: fullName,
      phoneNumber: phoneNumber,
      email: email,
      password: password,
      rePassword: rePassword,
    );
  }
}
