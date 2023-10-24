import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/dummy_models/categories_model.dart';
import 'package:route_e_commerce/views/home/widgets/category_item.dart';

class CategoriesItems extends StatelessWidget {
  const CategoriesItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          spacing: 16.w,
          runSpacing: 16.h,
          children: categories
              .map((category) => CategorieItem(category: category))
              .toList()),
    );
  }
}
