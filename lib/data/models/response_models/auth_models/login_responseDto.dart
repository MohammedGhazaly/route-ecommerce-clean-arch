import 'package:route_e_commerce/data/models/response_models/auth_models/error_modelDto.dart';
import 'package:route_e_commerce/data/models/response_models/auth_models/userDto.dart';
import 'package:route_e_commerce/domain/entity/auth_entity/auth_result_entity.dart';

class LoginResponseDto {
  String? message;
  String? statusMsg;
  ErrorModelDto? error;
  UserDto? user;
  String? token;

  LoginResponseDto({
    this.message,
    this.user,
    this.token,
    this.statusMsg,
    this.error,
  });

  LoginResponseDto.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    token = json['token'];
    statusMsg = json["statusMsg"];
    user = json['user'] != null ? new UserDto.fromJson(json['user']) : null;
    error = json['errors'] != null
        ? new ErrorModelDto.fromJson(json['errors'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['token'] = this.token;
    data['statusMsg'] = this.statusMsg;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    if (this.error != null) {
      data['errors'] = this.error!.toJson();
    }
    return data;
  }

  AuthResultEntity toAuthResultEntity() {
    return AuthResultEntity(userEntity: user?.toUserEntity(), token: token);
  }
}
