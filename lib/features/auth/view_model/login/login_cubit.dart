import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:route_e_commerce/domain/entity/auth_result_entity.dart';
import 'package:route_e_commerce/domain/use_cases/login_use_case.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginUseCase loginUseCase;

  LoginCubit({required this.loginUseCase}) : super(LoginInitial());
  void login({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());

    var either = await loginUseCase.invoke(
      email: email,
      password: password,
    );
    either.fold((l) {
      emit(LoginFailure(
          errorMessage: l.errorMessage ?? "Something went wrong."));
    }, (r) {
      emit(LoginSuccess(registerRequestModel: r));
    });
  }
}
