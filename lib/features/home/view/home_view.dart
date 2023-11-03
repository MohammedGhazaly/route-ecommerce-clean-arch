import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:route_e_commerce/domain/di/di.dart';
import 'package:route_e_commerce/features/home/view/widgets/annountcements_section.dart';
import 'package:route_e_commerce/features/home/view/widgets/categories_section.dart';
import 'package:route_e_commerce/features/home/view/widgets/category_items.dart';
import 'package:route_e_commerce/features/home/view/widgets/home_appliances_section.dart';
import 'package:route_e_commerce/features/home/view_model/home_cubit/home_cubit.dart';
import 'package:route_e_commerce/utils/my_assets.dart';
import 'package:route_e_commerce/utils/my_colors.dart';
import 'package:route_e_commerce/utils/shared_widgets/custom_search_with_shopping_cart.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  HomeCubit homeCubit =
      HomeCubit(getCategoriesUseCase: injectGetCateegoriesUseCase());

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
              const AnnouncementsSection(),
              SizedBox(
                height: 24.h,
              ),
              BlocBuilder<HomeCubit, HomeState>(
                bloc: homeCubit..getCategories(),
                builder: (context, state) {
                  if (state is HomeCategorySuccess) {
                    return CategoriesSection(
                      categories: state.categoryResponseEntity.data ?? [],
                    );
                  } else if (state is HomeCategoryFailure) {
                    return Text(state.errorMessage);
                  } else {
                    return Center(
                      child: LoadingAnimationWidget.inkDrop(
                        color: MyColors.primaryColor,
                        size: 30.sp,
                      ),
                    );
                  }
                },
              ),
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
    // BlocBuilder(
    //   bloc: homeCubit..getCategories(),
    //   builder: (context, state) {
    //     if (state is HomeCategorySuccess) {
    //       return CategoriesItems(
    //         categories: state.categoryResponseEntity.data ?? [],
    //       );
    //     }
    //     return CircularProgressIndicator();
    //   },
    // );
  }
}
