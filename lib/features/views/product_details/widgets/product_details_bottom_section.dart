import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/features/views/product_details/widgets/custom_product_details_button.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class ProductDetailsBottomSection extends StatelessWidget {
  const ProductDetailsBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              "Total price",
              style: TextStyle(
                fontSize: 18.sp,
                color: MyColors.primaryColor.withOpacity(
                  0.6,
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              "3500",
              style: TextStyle(fontSize: 18.sp, color: MyColors.primaryColor),
            ),
          ],
        ),
        SizedBox(
          width: 35.w,
        ),
        Expanded(
          child: CustomProductDetailsButton(),
        )
      ],
    );
  }
}
