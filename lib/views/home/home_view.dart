import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/utils/my_assets.dart';
import 'package:route_e_commerce/utils/my_colors.dart';
import 'package:route_e_commerce/utils/shared_widgets/custom_search_with_shopping_cart.dart';
import 'package:route_e_commerce/views/home/widgets/annountcements_section.dart';
import 'package:route_e_commerce/views/home/widgets/categories_section.dart';
import 'package:route_e_commerce/views/home/widgets/home_appliances_section.dart';

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
              Image.asset(
                MyAssets.logo,
                color: MyColors.primaryColor,
              ),
              SizedBox(
                height: 18.h,
              ),
              const CustomSearchWithShoppingCart(),
              SizedBox(
                height: 16.h,
              ),
              AnnouncementsSection(),
              SizedBox(
                height: 24.h,
              ),
              CategoriesSection(),
              SizedBox(
                height: 24.h,
              ),
              HomeAppliancesSection(),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
