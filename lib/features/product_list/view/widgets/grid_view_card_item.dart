import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/dummy_models/item_model.dart';
import 'package:route_e_commerce/features/product_list/view/widgets/grid_view_card_item_body.dart';
import 'package:route_e_commerce/utils/my_colors.dart';
import 'package:route_e_commerce/utils/shared_widgets/item_card_header.dart';

class GridViewCardItem extends StatelessWidget {
  final DummyItemModel dummyItemModel;
  const GridViewCardItem({super.key, required this.dummyItemModel});

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
            image: dummyItemModel.imgUrl[0],
            isWishlisted: dummyItemModel.isWishlisted,
          ),
          SizedBox(
            height: 7.h,
          ),
          GridViewCardItemBody(
            dummyItemModel: dummyItemModel,
          )
        ],
      ),
    );
  }
}
