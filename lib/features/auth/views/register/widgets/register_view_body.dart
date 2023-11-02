import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/domain/use_cases/register_use_case.dart';
import 'package:route_e_commerce/features/auth/view_model/register/register_cubit.dart';
import 'package:route_e_commerce/features/auth/views/shared_widgets/custom_auth_button.dart';
import 'package:route_e_commerce/features/auth/views/shared_widgets/custom_auth_field.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import 'package:route_e_commerce/utils/shared_widgets/custom_snackbar_with_awesome_content.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  final fullNameController = TextEditingController();
  final mobileNumberController = TextEditingController();
  final emailAddressController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    RegisterCubit registerViewModel =
        RegisterCubit(registerUseCase: injectRegisterUseCase());

    return SafeArea(
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
              height: 45.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomAuthField(
                      textEditingController: fullNameController,
                      keyboardType: TextInputType.text,
                      fieldName: "Full Name",
                      hintText: "enter your full name",
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Name should not be empty.";
                        }
                        if (value.length < 3) {
                          return "Name must be at least 3 chars";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    CustomAuthField(
                      textEditingController: mobileNumberController,
                      keyboardType: TextInputType.number,
                      fieldName: "Mobile Number",
                      hintText: "enter your mobile no",
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Phone should not be empty.";
                        }
                        if (value.length < 11) {
                          return "Phone is less than 11 chars";
                        }
                        if (value.length > 11) {
                          return "Phone is more than 11 chars";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
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
                      height: 32.h,
                    ),
                    CustomAuthField(
                      textEditingController: confirmPasswordController,
                      keyboardType: TextInputType.text,
                      fieldName: "Confirm password",
                      hintText: "re enter your password",
                      isObscure: isConfirmPasswordVisible ? false : true,
                      suffixIcon: InkWell(
                        onTap: () {
                          isConfirmPasswordVisible = !isConfirmPasswordVisible;
                          setState(() {});
                        },
                        child: Icon(
                          isConfirmPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Password should not be empty.";
                        }

                        if (confirmPasswordController.text !=
                            passwordController.text) {
                          return "Passwords don't match";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 55.h,
                    ),
                    BlocConsumer<RegisterCubit, RegisterState>(
                      bloc: registerViewModel,
                      listener: (context, state) {
                        if (state is RegisterFailure) {
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(buildCustomSnackBar(
                              color: Colors.red,
                              title: state.errorMessage,
                              contentType: ContentType.failure,
                            ));
                        }
                        if (state is RegisterSuccess) {
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
                        if (state is RegisterLoading) {
                          return CustomAuthButton(
                            isLoading: true,
                            text: "Sign up",
                            onTapFunction: () {},
                          );
                        } else {
                          return CustomAuthButton(
                            isLoading: false,
                            text: "Sign up",
                            onTapFunction: () {
                              if (formKey.currentState!.validate()) {
                                registerViewModel.register(
                                    fullName: fullNameController.text,
                                    phoneNumber: mobileNumberController.text,
                                    email: emailAddressController.text,
                                    password: passwordController.text,
                                    rePassword: confirmPasswordController.text);
                              }
                            },
                          );
                        }
                      },
                    ),
                    SizedBox(
                      height: 90.h,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
