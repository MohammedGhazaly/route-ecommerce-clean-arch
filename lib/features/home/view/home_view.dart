import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:route_e_commerce/domain/di/di.dart';
import 'package:route_e_commerce/features/home/view/widgets/annountcements_section.dart';
import 'package:route_e_commerce/features/home/view/widgets/categories_or_brands_items.dart';
import 'package:route_e_commerce/features/home/view_model/home_cubit/home_cubit.dart';
import 'package:route_e_commerce/utils/my_assets.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeCubit homeCubit = HomeCubit(
      getCategoriesUseCase: injectGetCateegoriesUseCase(),
      getBrandsUseCase: injectGetBrandsUseCase());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: homeCubit
        ..getBrands()
        ..getCategories(),
      builder: (context, state) {
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
                  height: 24.h,
                ),
                const AnnouncementsSection(),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                        color: MyColors.darkPrimaryColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                if (state is HomeCategoryLoading)
                  Center(
                    child: LoadingAnimationWidget.inkDrop(
                      color: MyColors.primaryColor,
                      size: 30.sp,
                    ),
                  ),
                if (state is HomeCategoryFailure)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            state.errorMessage,
                          ),
                        ],
                      ),
                    ],
                  ),
                if (homeCubit.categoryData.isNotEmpty)
                  CategoriesOrBrandsItems(
                    categories: homeCubit.categoryData,
                    fillOrCover: "cover",
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Brands",
                      style: TextStyle(
                        color: MyColors.darkPrimaryColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                if (state is HomeBrandsLoading)
                  Center(
                    child: LoadingAnimationWidget.inkDrop(
                      color: MyColors.primaryColor,
                      size: 30.sp,
                    ),
                  ),
                if (state is HomeBrandsFailure)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        state.errorMessage,
                      ),
                    ],
                  ),
                if (homeCubit.brandsData.isNotEmpty)
                  CategoriesOrBrandsItems(
                    fillOrCover: "fill",
                    categories: homeCubit.brandsData,
                  )

                // BlocBuilder<HomeCubit, HomeState>(
                //   bloc: homeCubit..getCategories(),
                //   builder: (context, state) {
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Text(
                //           "Categories",
                //           style: TextStyle(
                //             color: MyColors.darkPrimaryColor,
                //             fontSize: 18.sp,
                //             fontWeight: FontWeight.w500,
                //           ),
                //         ),
                //       ],
                //     );
                //     if (state is HomeCategorySuccess) {

                //     } else if (state is HomeCategoryFailure) {
                //       return Text(state.errorMessage);
                //     } else if (state is HomeBrandsLoading) {
                //
                //     }
                //     return const SizedBox();
                //   },
                // ),
              ],
            ),
          ),
        ));
      },
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
