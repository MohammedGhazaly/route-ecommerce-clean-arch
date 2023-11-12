import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:route_e_commerce/domain/di/di.dart';
import 'package:route_e_commerce/features/product_list/view/widgets/product_listview_body.dart';
import 'package:route_e_commerce/features/product_list/view_model/product_list_cubit/product_list_cubit.dart';
import 'package:route_e_commerce/utils/my_colors.dart';
import 'package:route_e_commerce/utils/shared_widgets/failure_widget.dart';

class ProductListView extends StatelessWidget {
  static String routeName = "product-route";
  final String? brandId;
  final String? categoryId;
  const ProductListView({super.key, this.brandId, this.categoryId});

  @override
  Widget build(BuildContext context) {
    ProductListCubit productListCubit =
        ProductListCubit(getProductsUseCase: injectGetProductsUseCase());

    return Scaffold(
      body: BlocBuilder<ProductListCubit, ProductListState>(
        bloc: productListCubit
          ..getProducts(brandId: brandId, categoryId: categoryId),
        builder: (context, state) {
          if (state is ProductListSuccess) {
            return ProductListViewBody(
              products: state.products,
            );
          } else if (state is ProductListFailure) {
            return FailureWidget(
              errorMessage: state.errorMessage,
              onPressedFunction: () {
                productListCubit.getProducts(
                    brandId: brandId, categoryId: categoryId);
              },
            );
          } else if (state is ProductEmpty) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "sorry, no item found for this category or brand.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: MyColors.primaryColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton.icon(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          foregroundColor: MyColors.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                              side: BorderSide(
                                  color: MyColors.primaryColor, width: 2))),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                      label: Text("Go back"))
                ],
              )),
            );
          } else {
            return Center(
              child: LoadingAnimationWidget.inkDrop(
                  color: MyColors.primaryColor, size: 36.sp),
            );
          }
        },
      ),
    );
  }
}
