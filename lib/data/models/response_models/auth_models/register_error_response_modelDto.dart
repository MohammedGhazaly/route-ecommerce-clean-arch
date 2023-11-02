import 'package:route_e_commerce/data/models/response_models/auth_models/error_modelDto.dart';

class RegisterResponseErrorModel {
  String? statusMsg;
  String? message;
  ErrorModel? error;

  RegisterResponseErrorModel({this.statusMsg, this.message, this.error});

  RegisterResponseErrorModel.fromJson(Map<String, dynamic> json) {
    statusMsg = json['statusMsg'];
    message = json['message'];
    error = json['errors'] != null ? ErrorModel.fromJson(json['errors']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusMsg'] = this.statusMsg;
    data['message'] = this.message;
    if (this.error != null) {
      data['errors'] = this.error!.toJson();
    }

    return data;
  }
}
