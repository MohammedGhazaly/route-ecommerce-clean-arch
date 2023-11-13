import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/features/home/view/widgets/annountcements_section.dart';
import 'package:route_e_commerce/features/home/view/widgets/brands_section.dart';
import 'package:route_e_commerce/features/home/view/widgets/categories_section.dart';
import 'package:route_e_commerce/features/product_list/view/product_list_view.dart';
import 'package:route_e_commerce/utils/my_colors.dart';
import 'package:route_e_commerce/utils/shared_widgets/logo_with_shopping.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.w),
      child: SingleChildScrollView(
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
            const AnnouncementsSection(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(
                            color: MyColors.darkPrimaryColor,
                          )),
                      backgroundColor: Colors.white,
                      foregroundColor: MyColors.darkPrimaryColor),
                  onPressed: () {
                    Navigator.pushNamed(context, ProductListView.routeName);
                  },
                  child: Text(
                    "View all products",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "Categories",
              style: TextStyle(
                color: MyColors.darkPrimaryColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            CategoriesSection(),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "Brands",
              style: TextStyle(
                color: MyColors.darkPrimaryColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            BrandsSection()
          ],
        ),
      ),
    ));
  }
}
