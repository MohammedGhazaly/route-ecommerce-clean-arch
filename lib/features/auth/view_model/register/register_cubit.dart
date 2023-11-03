import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:route_e_commerce/domain/entity/auth_entity/auth_result_entity.dart';
import 'package:route_e_commerce/domain/use_cases/register_use_case.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterUseCase registerUseCase;

  RegisterCubit({required this.registerUseCase}) : super(RegisterInitial());

  void register({
    required String fullName,
    required String phoneNumber,
    required String email,
    required String password,
    required String rePassword,
  }) async {
    emit(RegisterLoading());

    var either = await registerUseCase.invoke(
        fullName: fullName,
        phoneNumber: phoneNumber,
        email: email,
        password: password,
        rePassword: rePassword);
    either.fold((l) {
      emit(RegisterFailure(
          errorMessage: l.errorMessage ?? "Something went wrong."));
    }, (r) {
      emit(RegisterSuccess(registerRequestModel: r));
    });
    // try {
    //   emit(RegisterLoading());

    //   var response = await registerUseCase.invoke(
    //     fullName: fullName,
    //     phoneNumber: phoneNumber,
    //     email: email,
    //     password: password,
    //     rePassword: rePassword,
    //   );
    //   if (response.registerResponseErrorModel!.statusMsg == "fail") {
    //     emit(RegisterFailure(
    //         errorMessage: response.registerResponseErrorModel?.message ??
    //             "Something went wrong, try again."));
    //   } else if (response.registerResponseErrorModel!.error != null) {
    //     emit(RegisterFailure(
    //         errorMessage: response.registerResponseErrorModel?.error!.msg ??
    //             "Something went wrong, try again."));
    //   } else {
    //     emit(RegisterSuccess(registerRequestModel: response));
    //   }
    // } on SocketException catch (e) {
    //   emit(RegisterFailure(errorMessage: "No internet connection"));
    // } catch (e) {
    //   emit(RegisterFailure(errorMessage: e.toString()));
    // }
  }
}
