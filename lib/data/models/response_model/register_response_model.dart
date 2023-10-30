import 'package:route_e_commerce/data/models/response_model/register_error_response_model.dart';

class RegisterResponseModel {
  String? message;
  User? user;
  String? token;
  RegisterResponseErrorModel? registerResponseErrorModel;

  RegisterResponseModel(
      {this.message, this.user, this.token, this.registerResponseErrorModel});

  RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
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
}

class User {
  String? name;
  String? email;
  String? role;

  User({this.name, this.email, this.role});

  User.fromJson(Map<String, dynamic> json) {
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
}
