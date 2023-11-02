import 'package:route_e_commerce/data/models/response_models/auth_models/register_response_modelDto.dart';
import 'package:route_e_commerce/domain/repos/auth_repo/repo/auth_repo.dart';

class RegisterUseCase {
  AuthRepo authRepo;
  RegisterUseCase({required this.authRepo});

  Future<RegisterResponseDto> invoke({
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

RegisterUseCase injectRegisterUseCase() {
  return RegisterUseCase(authRepo: injectAuthRepo());
}
