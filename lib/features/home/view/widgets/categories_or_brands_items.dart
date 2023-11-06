import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/domain/entity/home_entity/category_data_entity.dart';
import 'package:route_e_commerce/features/home/view/widgets/category_or_brand_item.dart';

class CategoriesOrBrandsItems extends StatelessWidget {
  final List<CategoryOrBrandDataEntity> categories;
  final String fillOrCover;
  const CategoriesOrBrandsItems(
      {super.key, required this.categories, required this.fillOrCover});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 310.h,
        child: GridView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0),
          itemBuilder: (context, index) {
            return CategoryOrBrandItem(
              category: categories[index],
              fillOrCover: fillOrCover,
            );
          },
        )

        // Wrap(
        //     alignment: WrapAlignment.spaceEvenly,
        //     spacing: 16.w,
        //     runSpacing: 16.h,
        //     children: categories
        //         .map((category) => CategorieItem(category: category))
        //         .toList()),
        );
  }
}
