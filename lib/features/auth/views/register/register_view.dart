import 'package:flutter/material.dart';
import 'package:route_e_commerce/features/auth/views/register/widgets/register_view_body.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static String routeName = "register-view";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: RegisterViewBody(),
    );
  }
}
