import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class CustomAuthButton extends StatelessWidget {
  final String text;
  final bool isLoading;
  final void Function()? onTapFunction;
  const CustomAuthButton(
      {super.key,
      required this.text,
      this.onTapFunction,
      required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64.h,
      child: TextButton(
        onPressed: onTapFunction,
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              15.r,
            ),
          ),
        ),
        child: isLoading
            ? LoadingAnimationWidget.inkDrop(
                color: MyColors.primaryColor,
                size: 30.sp,
              )
            : Text(
                text,
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
