import "dart:convert";

import "package:connectivity_plus/connectivity_plus.dart";
import "package:dartz/dartz.dart";
import "package:http/http.dart" as http;
import "package:route_e_commerce/data/api/api_constants.dart";
import "package:route_e_commerce/data/models/request_models/auth_models/login_request_model.dart";
import 'package:route_e_commerce/data/models/request_models/auth_models/register_request_model.dart';
import "package:route_e_commerce/data/models/response_models/auth_models/login_responseDto.dart";
import 'package:route_e_commerce/data/models/response_models/auth_models/register_response_modelDto.dart';
import "package:route_e_commerce/data/models/response_models/home_models/category_responseDto.dart";
import "package:route_e_commerce/data/models/response_models/product_models/product_response_dto.dart";
import "package:route_e_commerce/domain/entity/failures.dart";

class ApiManager {
  ApiManager._();
  static ApiManager? _instance;
  static ApiManager getInstance() {
    if (_instance == null) {
      _instance = ApiManager._();
    }
    return _instance!;
  }

  Future<Either<Failures, RegisterResponseDto>> register({
    required String fullName,
    required String phoneNumber,
    required String email,
    required String password,
    required String rePassword,
  }) async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
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
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        return Right<Failures, RegisterResponseDto>(registerResponseModel);
      } else {
        return Left<Failures, RegisterResponseDto>(ServerFailure(
            errorMessage: registerResponseModel
                        .registerResponseErrorModel?.error !=
                    null
                ? registerResponseModel.registerResponseErrorModel?.error!.msg
                : registerResponseModel.registerResponseErrorModel!.message));
      }
    } else {
      return Left<Failures, RegisterResponseDto>(
          NetworkError(errorMessage: "Check internet connection"));
    }
  }

  Future<Either<Failures, LoginResponseDto>> login({
    required String email,
    required String password,
  }) async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.loginEndPoint);

      LoginRequest loginRequestBody = LoginRequest(
        email: email,
        password: password,
      );
      http.Response response =
          await http.post(url, body: loginRequestBody.toJson());
      var loginResponseModel =
          LoginResponseDto.fromJson(jsonDecode(response.body));
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        return Right<Failures, LoginResponseDto>(loginResponseModel);
      } else {
        return Left<Failures, LoginResponseDto>(
          ServerFailure(
            errorMessage: loginResponseModel.error != null
                ? loginResponseModel.error!.msg
                : loginResponseModel.message,
          ),
        );
      }
    } else {
      return Left<Failures, LoginResponseDto>(
          NetworkError(errorMessage: "Check internet connection"));
    }
  }

  Future<Either<Failures, CategoryOrBrandResponseDto>> getCategories() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.categoryEndPoint);

      http.Response response = await http.get(url);
      var categoryOrBrandsResponseModel =
          CategoryOrBrandResponseDto.fromJson(jsonDecode(response.body));
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        return Right<Failures, CategoryOrBrandResponseDto>(
            categoryOrBrandsResponseModel);
      } else {
        return Left<Failures, CategoryOrBrandResponseDto>(
          ServerFailure(errorMessage: categoryOrBrandsResponseModel.message),
        );
      }
    } else {
      return Left<Failures, CategoryOrBrandResponseDto>(
          NetworkError(errorMessage: "Check internet connection"));
    }
  }

  Future<Either<Failures, CategoryOrBrandResponseDto>> getBrands() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.brandsEndPoint);

      http.Response response = await http.get(url);
      var categoriesResponseModel =
          CategoryOrBrandResponseDto.fromJson(jsonDecode(response.body));
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        return Right<Failures, CategoryOrBrandResponseDto>(
            categoriesResponseModel);
      } else {
        return Left<Failures, CategoryOrBrandResponseDto>(
          ServerFailure(errorMessage: categoriesResponseModel.message),
        );
      }
    } else {
      return Left<Failures, CategoryOrBrandResponseDto>(
          NetworkError(errorMessage: "Check internet connection"));
    }
  }

  Future<Either<Failures, ProductResponseDto>> getProducts() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.productEndPoint);

      http.Response response = await http.get(url);
      var productResponseModel =
          ProductResponseDto.fromJson(jsonDecode(response.body));
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        return Right<Failures, ProductResponseDto>(productResponseModel);
      } else {
        return Left<Failures, ProductResponseDto>(
          ServerFailure(errorMessage: productResponseModel.message),
        );
      }
    } else {
      return Left<Failures, ProductResponseDto>(
          NetworkError(errorMessage: "Check internet connection"));
    }
  }
}
