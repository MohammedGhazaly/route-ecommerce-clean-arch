import 'package:route_e_commerce/domain/entity/auth_entity/user_entity.dart';

class UserDto {
  String? name;
  String? email;
  String? role;

  UserDto({this.name, this.email, this.role});

  UserDto.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['role'] = this.role;
    return data;
  }

  UserEntity toUserEntity() {
    return UserEntity(email: email, name: name, role: role);
  }
}
