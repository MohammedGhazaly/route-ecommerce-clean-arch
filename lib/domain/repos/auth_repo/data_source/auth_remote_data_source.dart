import 'package:route_e_commerce/data/api/api_manager.dart';
import 'package:route_e_commerce/data/models/response_models/auth_models/register_response_model.dart';
import 'package:route_e_commerce/data/repos/auth_repo/data_source/auth_remote_data_source_impl.dart';

abstract class AuthRemoteDataSource {
  Future<RegisterResponseModel> register({
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
