import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/domain/entity/home_entity/category_data_entity.dart';
import 'package:route_e_commerce/features/home/view/widgets/category_items.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class CategoriesSection extends StatelessWidget {
  final List<CategoryDataEntity> categories;
  const CategoriesSection({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Categories",
              style: TextStyle(
                color: MyColors.darkPrimaryColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "View all",
                style: TextStyle(
                  color: MyColors.darkPrimaryColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        CategoriesItems(
          categories: categories,
        )
      ],
    );
  }
}
