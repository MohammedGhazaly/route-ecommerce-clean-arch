import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/domain/entity/product_entity/product_response_entity.dart';
import 'package:route_e_commerce/features/product_list/view/widgets/grid_view_card_item_body.dart';
import 'package:route_e_commerce/utils/my_colors.dart';
import 'package:route_e_commerce/utils/shared_widgets/item_card_header.dart';

class GridViewCardItem extends StatelessWidget {
  final ProductEntity product;
  const GridViewCardItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: MyColors.primaryColor,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ItemCardHeader(
            image: product.images![0],
            height: 110.h,
          ),
          SizedBox(
            height: 7.h,
          ),
          GridViewCardItemBody(
            product: product,
          )
        ],
      ),
    );
  }
}
