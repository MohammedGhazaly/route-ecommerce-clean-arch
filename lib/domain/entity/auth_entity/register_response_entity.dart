import 'package:route_e_commerce/domain/entity/auth_entity/register_response_error_entity.dart';
import 'package:route_e_commerce/domain/entity/auth_entity/user_entity.dart';

class RegisterResponseEntity {
  String? message;
  UserEntity? user;
  String? token;
  RegisterResponseErrorEntity? registerResponseErrorModel;

  RegisterResponseEntity(
      {this.message, this.user, this.token, this.registerResponseErrorModel});
}
