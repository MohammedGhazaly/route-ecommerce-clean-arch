import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class FailureWidget extends StatelessWidget {
  final String errorMessage;
  final void Function()? onPressedFunction;
  const FailureWidget({
    super.key,
    required this.errorMessage,
    this.onPressedFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            errorMessage,
            style: TextStyle(
              color: MyColors.primaryColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 48.sp),
                backgroundColor: MyColors.primaryColor,
                foregroundColor: Colors.white),
            onPressed: onPressedFunction,
            child: const Text(
              "Try again",
            ),
          )
        ],
      ),
    );
  }
}
