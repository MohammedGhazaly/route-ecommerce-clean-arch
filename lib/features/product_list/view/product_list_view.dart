import 'package:flutter/material.dart';
import 'package:route_e_commerce/features/product_list/view/widgets/product_listview_body.dart';

class ProductListView extends StatelessWidget {
  static String routeName = "product-route";
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductListViewBody(),
    );
    // SafeArea(
    //   child: Padding(
    //     padding: EdgeInsets.symmetric(horizontal: 17.w),
    //     child: Column(
    //       mainAxisSize: MainAxisSize.min,
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         // SizedBox(
    //         //   height: 10.h,
    //         // ),
    //         // Image.asset(
    //         //   MyAssets.logo,
    //         //   color: MyColors.primaryColor,
    //         // ),
    //         // SizedBox(
    //         //   height: 18.h,
    //         // ),
    //         // const CustomSearchWithShoppingCart(),
    //         // SizedBox(
    //         //   height: 24.h,
    //         // ),
    //         // Expanded(
    //         //   child: GridView.builder(
    //         //     itemCount: dummyItemData.length,
    //         //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //         //         crossAxisCount: 2,
    //         //         childAspectRatio: 2 / 2.8,
    //         //         crossAxisSpacing: 16.w,
    //         //         mainAxisSpacing: 16.h),
    //         //     itemBuilder: (context, index) {
    //         //       return InkWell(
    //         //         splashColor: Colors.transparent,
    //         //         hoverColor: Colors.transparent,
    //         //         highlightColor: Colors.transparent,
    //         //         onTap: () {
    //         //           Navigator.pushNamed(context, ProductDetailsView.routeName,
    //         //               arguments: dummyItemData[index]);
    //         //         },
    //         //         child: GridViewCardItem(
    //         //           dummyItemModel: dummyItemData[index],
    //         //         ),
    //         //       );
    //         //     },
    //         //   ),
    //         // ),
    //         SizedBox(
    //           height: 10.h,
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
