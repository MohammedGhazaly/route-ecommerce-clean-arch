import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/dummy_models/item_model.dart';
import 'package:route_e_commerce/features/product_list/view/widgets/grid_view_card_item.dart';
import 'package:route_e_commerce/features/views/product_details/product_details_view.dart';
import 'package:route_e_commerce/utils/my_assets.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class ProductListViewBody extends StatelessWidget {
  const ProductListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  MyAssets.logo,
                  color: MyColors.primaryColor,
                ),
                InkWell(
                  onTap: () {},
                  child: ImageIcon(
                    AssetImage(MyAssets.shoppingCart),
                    size: 36.sp,
                    color: MyColors.primaryColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: dummyItemData.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 2.8,
                    crossAxisSpacing: 16.w,
                    mainAxisSpacing: 16.h),
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Navigator.pushNamed(context, ProductDetailsView.routeName,
                          arguments: dummyItemData[index]);
                    },
                    child: GridViewCardItem(
                      dummyItemModel: dummyItemData[index],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
