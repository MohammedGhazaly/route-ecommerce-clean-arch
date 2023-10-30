import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64.h,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
        ),
        child: Text(
          "Sign up",
          style: TextStyle(
            fontSize: 20.sp,
            color: MyColors.darkPrimaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
