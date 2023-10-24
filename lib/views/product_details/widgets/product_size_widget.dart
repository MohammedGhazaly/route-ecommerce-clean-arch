import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class ProductSizeWidget extends StatelessWidget {
  final int size;
  final bool isSelected;
  const ProductSizeWidget(
      {super.key, required this.size, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      width: 35.r,
      height: 35.r,
      decoration: BoxDecoration(
        color: isSelected ? MyColors.primaryColor : Colors.transparent,
        borderRadius: BorderRadius.circular(
          100.r,
        ),
      ),
      child: Center(
        child: Text(
          size.toString(),
          style: TextStyle(
            fontSize: 14.sp,
            color: isSelected ? Colors.white : MyColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
