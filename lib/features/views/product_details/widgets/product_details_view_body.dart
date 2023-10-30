import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/dummy_models/item_model.dart';
import 'package:route_e_commerce/features/views/product_details/widgets/add_remove_items_widget.dart';
import 'package:route_e_commerce/features/views/product_details/widgets/colors_section.dart';
import 'package:route_e_commerce/features/views/product_details/widgets/product_description.dart';
import 'package:route_e_commerce/features/views/product_details/widgets/product_details_bottom_section.dart';
import 'package:route_e_commerce/features/views/product_details/widgets/product_images_slider.dart';
import 'package:route_e_commerce/features/views/product_details/widgets/product_item_sold_and_rating.dart';
import 'package:route_e_commerce/features/views/product_details/widgets/product_name_and_total_price.dart';
import 'package:route_e_commerce/features/views/product_details/widgets/size_section.dart';

class ProductDetailsViewBody extends StatelessWidget {
  final DummyItemModel itemDetails;
  const ProductDetailsViewBody({super.key, required this.itemDetails});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImagesSlider(
              itemDetails: itemDetails,
            ),
            SizedBox(
              height: 24.h,
            ),
            // أنا بس مش عارف السعر اللي معروض هنا هو السعر الجديد بتاع المنتج
            // ولا السعر التوتال
            ProductNameAndNewPrice(itemDetails: itemDetails),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                Expanded(
                  child: ProductItemSoldAndRating(
                    itemDetails: itemDetails,
                  ),
                ),
                AddRemoveItemsWidget(
                  itemsInCart: itemDetails.itemsInCart,
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            ProductDescription(itemDetails: itemDetails),
            SizedBox(
              height: 16.h,
            ),
            SizeSection(
              itemDetails: itemDetails,
            ),
            SizedBox(
              height: 16.h,
            ),
            ColorsSection(
              itemDetails: itemDetails,
            ),
            SizedBox(
              height: 48.h,
            ),
            ProductDetailsBottomSection()
          ],
        ),
      ),
    );
  }
}
