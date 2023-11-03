import 'package:route_e_commerce/domain/entity/auth_entity/user_entity.dart';

class AuthResultEntity {
  UserEntity? userEntity;
  String? token;

  AuthResultEntity({required this.userEntity, required this.token});
}
