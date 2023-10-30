import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:route_e_commerce/data/models/response_model/register_response_model.dart';
import 'package:route_e_commerce/data/repos/auth_repo/repo/auth_repo.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  AuthRepo authRepo;

  RegisterCubit({required this.authRepo}) : super(RegisterInitial());

  void register({
    required String fullName,
    required String phoneNumber,
    required String email,
    required String password,
    required String rePassword,
  }) async {
    try {
      print("Inside");
      emit(RegisterLoading());

      var response = await authRepo.register(
        fullName: fullName,
        phoneNumber: phoneNumber,
        email: email,
        password: password,
        rePassword: rePassword,
      );
      if (response.registerResponseErrorModel!.statusMsg == "fail") {
        emit(RegisterFailure(
            errorMessage: response.registerResponseErrorModel?.message ??
                "Something went wrong, try again."));
      } else if (response.registerResponseErrorModel!.error != null) {
        emit(RegisterFailure(
            errorMessage: response.registerResponseErrorModel?.error!.msg ??
                "Something went wrong, try again."));
      } else {
        emit(RegisterSuccess(registerRequestModel: response));
      }
    } on SocketException catch (e) {
      emit(RegisterFailure(errorMessage: "No internet connection"));
    } catch (e) {
      emit(RegisterFailure(errorMessage: e.toString()));
    }
  }
}
