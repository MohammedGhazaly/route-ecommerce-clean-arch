import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/dummy_models/item_model.dart';
import 'package:route_e_commerce/utils/my_assets.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class ProductItemSoldAndRating extends StatelessWidget {
  const ProductItemSoldAndRating({
    super.key,
    required this.itemDetails,
  });

  final DummyItemModel itemDetails;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.r),
            border: Border.all(
              color: MyColors.primaryColor,
              width: 1,
            ),
          ),
          child: Text(
            "${itemDetails.itemsSold} Sold",
            style: TextStyle(
              color: MyColors.darkPrimaryColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
        Image.asset(MyAssets.starIcon),
        SizedBox(
          width: 4.w,
        ),
        Text(
          "${itemDetails.avgRating} (${itemDetails.ratingCount})",
          style: TextStyle(
            color: MyColors.darkPrimaryColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
