import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/domain/entity/product_entity/product_response_entity.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class ProductName extends StatelessWidget {
  const ProductName({
    super.key,
    required this.prodcuct,
  });

  final ProductEntity prodcuct;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            prodcuct.title ?? "",
            style: TextStyle(
              fontSize: 18.sp,
              color: MyColors.darkPrimaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
