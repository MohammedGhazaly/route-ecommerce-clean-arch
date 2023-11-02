import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/domain/di/di.dart';
import 'package:route_e_commerce/features/auth/view_model/login/login_cubit.dart';
import 'package:route_e_commerce/features/auth/views/register/register_view.dart';
import 'package:route_e_commerce/features/auth/views/shared_widgets/custom_auth_button.dart';
import 'package:route_e_commerce/features/auth/views/shared_widgets/custom_auth_field.dart';
import 'package:route_e_commerce/utils/shared_widgets/custom_snackbar_with_awesome_content.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final emailAddressController = TextEditingController();
  final passwordController = TextEditingController();
  bool isPasswordVisible = false;

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailAddressController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    LoginCubit loginViewModel = LoginCubit(loginUseCase: injectLoginUseCase());
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 90.h,
              ),
              Image.asset(
                "assets/images/route_auth_logo.png",
                width: 235.w,
                height: 70.h,
              ),
              SizedBox(
                height: 90.h,
              ),
              Text(
                "Welcome back to route",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24.sp,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                "Please sign in with your email",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Form(
                autovalidateMode: AutovalidateMode.always,
                key: formKey,
                child: Column(
                  children: [
                    CustomAuthField(
                      textEditingController: emailAddressController,
                      keyboardType: TextInputType.emailAddress,
                      fieldName: "E-mail address",
                      hintText: "enter your email address",
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Email should not be empty.";
                        }
                        if (!EmailValidator.validate(value)) {
                          return "Please enter a valid email";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    CustomAuthField(
                      textEditingController: passwordController,
                      keyboardType: TextInputType.text,
                      fieldName: "Password",
                      hintText: "enter your password",
                      isObscure: isPasswordVisible ? false : true,
                      suffixIcon: InkWell(
                        onTap: () {
                          isPasswordVisible = !isPasswordVisible;
                          setState(() {});
                        },
                        child: Icon(
                          isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Password should not be empty.";
                        }
                        if (value.length < 6) {
                          return "Enter at least 6 chars";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          "Forgot password",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    BlocConsumer<LoginCubit, LoginState>(
                      bloc: loginViewModel,
                      listener: (context, state) {
                        if (state is LoginFailure) {
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(buildCustomSnackBar(
                              color: Colors.red,
                              title: state.errorMessage,
                              contentType: ContentType.failure,
                            ));
                        }
                        if (state is LoginSuccess) {
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(buildCustomSnackBar(
                              color: Colors.green[900]!,
                              title: "Account created successfully",
                              contentType: ContentType.success,
                            ));
                        }
                      },
                      builder: (context, state) {
                        if (state is LoginLoading) {
                          return SizedBox(
                            width: double.infinity,
                            child: CustomAuthButton(
                              isLoading: true,
                              text: "Login",
                              onTapFunction: () {},
                            ),
                          );
                        } else {
                          return SizedBox(
                            width: double.infinity,
                            child: CustomAuthButton(
                              isLoading: false,
                              text: "Login",
                              onTapFunction: () {
                                if (formKey.currentState!.validate()) {
                                  loginViewModel.login(
                                    email: emailAddressController.text,
                                    password: passwordController.text,
                                  );
                                }
                              },
                            ),
                          );
                        }
                      },
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(RegisterView.routeName);
                      },
                      child: Text(
                        "Don't have an account? Create one",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 90.h,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
