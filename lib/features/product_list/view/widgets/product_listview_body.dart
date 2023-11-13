import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/domain/entity/product_entity/product_response_entity.dart';
import 'package:route_e_commerce/features/product_list/view/widgets/grid_view_card_item.dart';
import 'package:route_e_commerce/features/product_details/product_details_view.dart';
import 'package:route_e_commerce/utils/my_assets.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class ProductListViewBody extends StatelessWidget {
  final List<ProductEntity> products;
  const ProductListViewBody({super.key, required this.products});

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
            LogoWithShoppingCart(),
            SizedBox(
              height: 24.h,
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.1,
                    crossAxisSpacing: 16.w,
                    mainAxisSpacing: 16.h),
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Navigator.pushNamed(context, ProductDetailsView.routeName,
                          arguments: products[index]);
                    },
                    child: GridViewCardItem(
                      product: products[index],
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

class LogoWithShoppingCart extends StatelessWidget {
  final Widget? centerWidget;
  const LogoWithShoppingCart({
    super.key,
    this.centerWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          MyAssets.logo,
          color: MyColors.primaryColor,
        ),
        if (centerWidget != null) centerWidget!,
        InkWell(
          onTap: () {},
          child: ImageIcon(
            const AssetImage(MyAssets.shoppingCart),
            size: 36.sp,
            color: MyColors.primaryColor,
          ),
        )
      ],
    );
  }
}
