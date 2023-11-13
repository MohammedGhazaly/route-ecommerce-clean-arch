import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/features/cart/view/widgets/cart_item_widget.dart';
import 'package:route_e_commerce/utils/my_colors.dart';
import 'package:route_e_commerce/utils/shared_widgets/logo_with_shopping.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 17.w,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          LogoWithShoppingCart(
            centerWidget: Text(
              "Cart",
              style: TextStyle(
                  color: MyColors.darkPrimaryColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          CartItemWidget()
          // Expanded(child: ListView.builder(itemBuilder: ((context, index) {})))
        ],
      ),
    ));
  }
}
