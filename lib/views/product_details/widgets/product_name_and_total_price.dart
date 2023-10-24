import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/dummy_models/item_model.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class ProductNameAndNewPrice extends StatelessWidget {
  const ProductNameAndNewPrice({
    super.key,
    required this.itemDetails,
  });

  final DummyItemModel itemDetails;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            itemDetails.name,
            style: TextStyle(
              fontSize: 18.sp,
              color: MyColors.darkPrimaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Text(
          "EGP ${itemDetails.newPrice}",
          style: TextStyle(
            fontSize: 18.sp,
            color: MyColors.darkPrimaryColor,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
