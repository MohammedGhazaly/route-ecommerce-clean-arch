import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/domain/entity/product_entity/product_response_entity.dart';
import 'package:route_e_commerce/features/product_details/widgets/custom_product_details_button.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class ProductDetailsBottomSection extends StatelessWidget {
  final ProductEntity product;
  const ProductDetailsBottomSection({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "price",
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: MyColors.primaryColor.withOpacity(
                  1,
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              "${product.price} EGP",
              style: TextStyle(
                  fontSize: 16.sp,
                  color: MyColors.primaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          width: 35.w,
        ),
        Expanded(
          child: CustomProductDetailsButton(productId: product.id!),
        )
      ],
    );
  }
}
