import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';
import 'package:route_e_commerce/dummy_models/item_model.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
    required this.itemDetails,
  });

  final DummyItemModel itemDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: MyColors.darkPrimaryColor,
          ),
        ),
        ReadMoreText(
          itemDetails.description,
          trimLines: 3,
          trimMode: TrimMode.Line,
          style: TextStyle(
            fontSize: 14.sp,
            color: MyColors.primaryColor.withOpacity(
              0.6,
            ),
          ),
          trimCollapsedText: ' Show More',
          trimExpandedText: ' Show Less',
          moreStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: MyColors.darkPrimaryColor),
          lessStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: MyColors.darkPrimaryColor),
        )
      ],
    );
  }
}
