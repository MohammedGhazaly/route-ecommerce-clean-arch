import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/domain/entity/cart_entity/get_user_cart_entity.dart';
import 'package:route_e_commerce/features/cart/view/widgets/inc_dec_widget.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class CartItemWidget extends StatelessWidget {
  final GetUserCartProductsEntity getUserCartProductsEntity;
  const CartItemWidget({
    super.key,
    required this.getUserCartProductsEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: MyColors.primaryColor, width: 1),
        borderRadius: BorderRadius.circular(
          15.r,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Image.network(
              getUserCartProductsEntity.product!.imageCover!,
              width: 140.h,
              height: 140.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        getUserCartProductsEntity.product!.title!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: MyColors.darkPrimaryColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete_rounded,
                        size: 32.sp,
                        color: MyColors.primaryColor,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "${getUserCartProductsEntity.price!.toString()} LE",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: MyColors.darkPrimaryColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      IncDecWidget(
                          getUserCartProductsEntity: getUserCartProductsEntity),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
