import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:route_e_commerce/domain/di/di.dart';
import 'package:route_e_commerce/features/home/view/widgets/categories_or_brands_items.dart';
import 'package:route_e_commerce/features/home/view_model/home_cubit/home_cubit.dart';
import 'package:route_e_commerce/utils/my_colors.dart';
import 'package:route_e_commerce/utils/shared_widgets/failure_widget.dart';

class BrandsSection extends StatelessWidget {
  const BrandsSection({super.key});

  @override
  Widget build(BuildContext context) {
    HomeCubit homeCubit = HomeCubit(
        getCategoriesUseCase: injectGetCateegoriesUseCase(),
        getBrandsUseCase: injectGetBrandsUseCase());
    return BlocBuilder<HomeCubit, HomeState>(
        bloc: homeCubit..getBrands(),
        builder: (context, state) {
          if (state is HomeBrandsSuccess) {
            return CategoriesOrBrandsItems(
              categories: state.categoryOrBrandResponseEntity.data ?? [],
              fillOrCover: "cover",
            );
          } else if (state is HomeBrandsFailure) {
            return FailureWidget(
              errorMessage: state.errorMessage,
              onPressedFunction: () {
                homeCubit.getBrands();
              },
            );
          } else if (state is HomeBrandsLoading) {
            {
              return Center(
                child: LoadingAnimationWidget.inkDrop(
                  color: MyColors.primaryColor,
                  size: 30.sp,
                ),
              );
            }
          }
          return SizedBox();
        });
  }
}
