import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/domain/entity/home_entity/category_data_entity.dart';
import 'package:route_e_commerce/features/home/view/widgets/category_item.dart';

class CategoriesItems extends StatelessWidget {
  final List<CategoryDataEntity> categories;
  const CategoriesItems({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 330.h,
        child: GridView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5),
          itemBuilder: (context, index) {
            return CategorieItem(
              category: categories[index],
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
