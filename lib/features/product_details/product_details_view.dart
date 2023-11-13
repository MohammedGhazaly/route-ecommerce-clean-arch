import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/domain/entity/product_entity/product_response_entity.dart';
import 'package:route_e_commerce/features/product_details/widgets/product_details_view_body.dart';
import 'package:route_e_commerce/utils/my_assets.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class ProductDetailsView extends StatelessWidget {
  static String routeName = "product-details-view";
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    ProductEntity productDetails =
        ModalRoute.of(context)!.settings.arguments as ProductEntity;
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: const Text("Product details"),
        backgroundColor: Colors.transparent,
        foregroundColor: MyColors.primaryColor,
        titleTextStyle: TextStyle(
          fontSize: 20.sp,
          color: MyColors.darkPrimaryColor,
          fontWeight: FontWeight.w500,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: InkWell(
              onTap: () {},
              child: ImageIcon(
                const AssetImage(MyAssets.shoppingCart),
                size: 36.sp,
                color: MyColors.primaryColor,
              ),
            ),
          )
        ],
      ),
      body: ProductDetailsViewBody(product: productDetails),
    );
  }
}
