import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:route_e_commerce/features/auth/views/login/widgets/login_view_body.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class LoginView extends StatelessWidget {
  static String routeName = "login-view";
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: LoginViewBody(),
    );
  }
}
