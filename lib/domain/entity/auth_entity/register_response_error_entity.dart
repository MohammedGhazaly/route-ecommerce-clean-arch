import 'package:route_e_commerce/domain/entity/auth_entity/error_model_entity.dart';

class RegisterResponseErrorEntity {
  String? statusMsg;
  String? message;
  ErrorModelEntity? error;

  RegisterResponseErrorEntity({this.statusMsg, this.message, this.error});
}
