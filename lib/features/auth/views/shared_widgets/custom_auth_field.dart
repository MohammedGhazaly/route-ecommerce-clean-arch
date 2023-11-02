import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class CustomAuthField extends StatelessWidget {
  final String fieldName;
  final String hintText;
  final Widget? suffixIcon;
  final bool isObscure;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final TextEditingController? textEditingController;
  const CustomAuthField({
    super.key,
    required this.fieldName,
    required this.hintText,
    this.suffixIcon,
    this.isObscure = false,
    this.keyboardType,
    this.textEditingController,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          fieldName,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 20.sp,
        ),
        TextFormField(
          cursorColor: MyColors.primaryColor,
          controller: textEditingController,
          obscureText: isObscure,
          validator: validator,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            suffixIconColor: Colors.grey,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 17, 133, 250),
                width: 2,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
            ),
            errorStyle: TextStyle(
              color: Colors.red[100],
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w300,
              color: const Color(
                0xB2000000,
              ),
            ),
          ),
        )
      ],
    );
  }
}
