import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductColorWidget extends StatelessWidget {
  final Color productColor;
  final bool isSelected;
  const ProductColorWidget(
      {super.key, required this.productColor, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      height: 35.r,
      width: 35.r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.r),
        color: productColor,
      ),
      child: Center(
        child: isSelected
            ? Icon(
                Icons.check,
                color: Colors.white,
                size: 24.sp,
              )
            : null,
      ),
    );
  }
}
