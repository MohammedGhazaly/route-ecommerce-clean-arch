import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/dummy_models/item_model.dart';
import 'package:route_e_commerce/utils/my_assets.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class GridViewCardItemBody extends StatelessWidget {
  final DummyItemModel dummyItemModel;
  const GridViewCardItemBody({super.key, required this.dummyItemModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.w, right: 7.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dummyItemModel.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14.sp,
              color: MyColors.darkPrimaryColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          Row(
            children: [
              Text(
                "EGP ${dummyItemModel.newPrice}",
                maxLines: 1,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: MyColors.darkPrimaryColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "${dummyItemModel.oldPrice} EGP",
                maxLines: 1,
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontSize: 10.sp,
                  color: MyColors.darkPrimaryColor.withOpacity(0.6),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Review (${dummyItemModel.avgRating})",
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
