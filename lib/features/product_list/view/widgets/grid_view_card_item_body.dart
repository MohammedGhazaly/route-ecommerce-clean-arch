import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/domain/entity/product_entity/product_response_entity.dart';
import 'package:route_e_commerce/utils/my_assets.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class GridViewCardItemBody extends StatelessWidget {
  final ProductEntity product;
  const GridViewCardItemBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.w, right: 7.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title ?? "",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16.sp,
              color: MyColors.darkPrimaryColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "EGP ${product.price}",
            maxLines: 1,
            style: TextStyle(
              fontSize: 14.sp,
              color: MyColors.darkPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Text(
                "Review (${product.ratingsAverage})",
                maxLines: 1,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: MyColors.darkPrimaryColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 7.w,
              ),
              Image.asset(
                MyAssets.starIcon,
              ),
              const Spacer(
                flex: 1,
              ),
              InkWell(
                onTap: () {},
                splashColor: Colors.transparent,
                child: Icon(
                  Icons.add_circle,
                  size: 32.sp,
                  color: MyColors.primaryColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
