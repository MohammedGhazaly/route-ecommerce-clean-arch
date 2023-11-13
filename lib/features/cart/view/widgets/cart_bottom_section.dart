import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/domain/entity/cart_entity/get_user_cart_entity.dart';
import 'package:route_e_commerce/features/cart/view/widgets/cart_custom_button.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class CartBottomSection extends StatelessWidget {
  final GetUserCartResponseEntity getUserCartResponseEntity;
  const CartBottomSection({
    super.key,
    required this.getUserCartResponseEntity,
  });

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
              getUserCartResponseEntity.data?.totalCartPrice.toString() ?? "0",
              style: TextStyle(
                  fontSize: 16.sp,
                  color: MyColors.primaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          width: 40.w,
        ),
        Expanded(child: CustomCartButton())
      ],
    );
  }
}
