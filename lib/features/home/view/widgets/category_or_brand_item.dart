import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/domain/entity/home_entity/category_data_entity.dart';
import 'package:route_e_commerce/utils/my_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CategoryOrBrandItem extends StatelessWidget {
  final CategoryOrBrandDataEntity category;
  final String fillOrCover;
  const CategoryOrBrandItem({
    super.key,
    required this.category,
    required this.fillOrCover,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // CircleAvatar(
        //   backgroundImage: CachedNetworkImageProvider(category.image!),
        //   radius: 50.r,
        // ),
        Container(
            width: 75,
            height: 75,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: CachedNetworkImage(
                imageUrl: category.image!,
                fit: fillOrCover == "fill" ? BoxFit.fill : BoxFit.cover,
              ),
            )),
        SizedBox(
          height: 8.h,
        ),
        Text(
          category.name ?? "",
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
