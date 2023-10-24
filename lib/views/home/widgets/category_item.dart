import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/dummy_models/categories_model.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class CategorieItem extends StatelessWidget {
  final CategoriesModel category;
  const CategorieItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(category.imgPath),
          radius: 50.r,
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          category.categoryName,
          textWidthBasis: TextWidthBasis.longestLine,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.sp,
            color: MyColors.darkPrimaryColor,
            fontWeight: FontWeight.normal,
          ),
        )
      ],
    );
  }
}
