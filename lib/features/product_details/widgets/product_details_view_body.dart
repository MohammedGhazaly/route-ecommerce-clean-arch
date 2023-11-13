import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/domain/entity/product_entity/product_response_entity.dart';
import 'package:route_e_commerce/features/product_details/widgets/product_description.dart';
import 'package:route_e_commerce/features/product_details/widgets/product_details_bottom_section.dart';
import 'package:route_e_commerce/features/product_details/widgets/product_images_slider.dart';
import 'package:route_e_commerce/features/product_details/widgets/product_item_sold_and_rating.dart';
import 'package:route_e_commerce/features/product_details/widgets/product_name_and_total_price.dart';
import 'package:route_e_commerce/utils/my_colors.dart';
import 'package:route_e_commerce/utils/shared_widgets/logo_with_shopping.dart';

class ProductDetailsViewBody extends StatelessWidget {
  final ProductEntity product;
  const ProductDetailsViewBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImagesSlider(
              product: product,
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 24.h,
            ),
            // // أنا بس مش عارف السعر اللي معروض هنا هو السعر الجديد بتاع المنتج
            // // ولا السعر التوتال
            ProductName(prodcuct: product),
            SizedBox(
              height: 8.h,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500.r),
                      color: MyColors.primaryColor),
                  child: Text(
                    product.category?.slug ?? "",
                    style: TextStyle(color: Colors.white, fontSize: 14.sp),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Flexible(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(500.r),
                        color: MyColors.primaryColor),
                    child: Text(
                      product.brand?.slug ?? "",
                      style: TextStyle(color: Colors.white, fontSize: 14.sp),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                Expanded(
                  child: ProductItemSoldAndRating(
                    product: product,
                  ),
                ),
                // AddRemoveItemsWidget(
                //   itemsInCart: itemDetails.itemsInCart,
                // ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            ProductDescription(product: product),
            SizedBox(
              height: 16.h,
            ),

            // SizedBox(
            //   height: 48.h,
            // ),
            ProductDetailsBottomSection(
              product: product,
            )
          ],
        ),
      ),
    );
  }
}
