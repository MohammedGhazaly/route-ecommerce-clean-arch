import "dart:convert";

import "package:http/http.dart" as http;
import "package:route_e_commerce/data/api/api_constants.dart";
import 'package:route_e_commerce/data/models/request_models/auth_models/register_request_model.dart';
import 'package:route_e_commerce/data/models/response_models/auth_models/register_response_modelDto.dart';

class ApiManager {
  ApiManager._();
  static ApiManager? _instance;
  static ApiManager getInstance() {
    if (_instance == null) {
      _instance = ApiManager._();
    }
    return _instance!;
  }

  Future<RegisterResponseDto> register({
    required String fullName,
    required String phoneNumber,
    required String email,
    required String password,
    required String rePassword,
  }) async {
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.registerEndPoint);

    RegisterRequestModel registerRequestBody = RegisterRequestModel(
      name: fullName,
      phone: phoneNumber,
      email: email,
      password: password,
      rePassword: rePassword,
    );
    http.Response response =
        await http.post(url, body: registerRequestBody.toJson());
    var registerResponseModel =
        RegisterResponseDto.fromJson(jsonDecode(response.body));
    return registerResponseModel;
  }
}
