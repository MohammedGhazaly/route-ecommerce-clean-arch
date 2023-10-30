import 'package:route_e_commerce/data/models/response_model/register_response_model.dart';

abstract class AuthRepo {
  Future<RegisterResponseModel> register({
    required String fullName,
    required String phoneNumber,
    required String email,
    required String password,
    required String rePassword,
  });
}
