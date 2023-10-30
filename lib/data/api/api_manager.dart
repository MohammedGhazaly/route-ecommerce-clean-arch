import "dart:convert";

import "package:http/http.dart" as http;
import "package:route_e_commerce/data/api/api_constants.dart";
import "package:route_e_commerce/data/model/request_models/register_request_model.dart";
import "package:route_e_commerce/data/model/response_model/register_response_model.dart";

class ApiManager {
  static Future<RegisterResponseModel> register({
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
        RegisterResponseModel.fromJson(jsonDecode(response.body));
    return registerResponseModel;
  }
}
