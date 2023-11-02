import 'package:route_e_commerce/data/models/response_models/auth_models/register_error_response_modelDto.dart';
import 'package:route_e_commerce/data/models/response_models/auth_models/userDto.dart';
import 'package:route_e_commerce/domain/entity/auth_result_entity.dart';

class RegisterResponseDto {
  String? message;
  UserDto? user;
  String? token;
  RegisterResponseErrorModel? registerResponseErrorModel;

  RegisterResponseDto(
      {this.message, this.user, this.token, this.registerResponseErrorModel});

  RegisterResponseDto.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    user = json['user'] != null ? new UserDto.fromJson(json['user']) : null;
    registerResponseErrorModel = new RegisterResponseErrorModel.fromJson(json);

    //todo => ممكن نعدل فيها برضه
    // registerResponseErrorModel = json['error'] != null
    //     ? new RegisterResponseErrorModel.fromJson(json['error'])
    //     : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }

  AuthResultEntity toAuthResultEntity() {
    return AuthResultEntity(userEntity: user?.toUserEntity(), token: token);
  }
}
