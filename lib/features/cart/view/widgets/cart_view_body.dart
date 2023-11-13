import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:route_e_commerce/domain/di/di.dart';
import 'package:route_e_commerce/features/cart/view/widgets/cart_bottom_section.dart';
import 'package:route_e_commerce/features/cart/view/widgets/cart_item_widget.dart';
import 'package:route_e_commerce/features/cart/view_model/cart_cubit/cart_cubit.dart';
import 'package:route_e_commerce/utils/my_colors.dart';
import 'package:route_e_commerce/utils/shared_widgets/failure_widget.dart';
import 'package:route_e_commerce/utils/shared_widgets/logo_with_shopping.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    CartCubit cartCubit = CartCubit(
        getUserCartUseCase: injectGetUserCartUseCase(),
        addToCartUseCase: injectAddToCartUseCase());
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 17.w,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          LogoWithShoppingCart(
            centerWidget: Text(
              "Cart",
              style: TextStyle(
                  color: MyColors.darkPrimaryColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          BlocBuilder<CartCubit, CartState>(
              bloc: cartCubit..getUserCart(),
              builder: (context, state) {
                if (state is UserCartSuccess) {
                  return Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                              itemCount: state.getUserCartResponseEntity.data
                                      ?.products?.length ??
                                  0,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(vertical: 12.h),
                                  child: CartItemWidget(
                                      getUserCartProductsEntity: state
                                          .getUserCartResponseEntity
                                          .data!
                                          .products![index]),
                                );
                              }),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        CartBottomSection(
                            getUserCartResponseEntity:
                                state.getUserCartResponseEntity),
                        SizedBox(
                          height: 50.h,
                        )
                      ],
                    ),
                  );
                } else if (state is UserCartFailure) {
                  return Expanded(
                    child: Center(
                      child: FailureWidget(
                        errorMessage: state.errorMessage,
                        onPressedFunction: () {},
                      ),
                    ),
                  );
                } else if (state is UserCartEmpty) {
                  return Expanded(
                    child: Center(
                      child: Text(
                        "Your cart is empty.",
                        style: TextStyle(
                          color: MyColors.primaryColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                } else {
                  return Expanded(
                    child: Center(
                      child: LoadingAnimationWidget.inkDrop(
                        color: MyColors.primaryColor,
                        size: 32.sp,
                      ),
                    ),
                  );
                }
              }),

          // Expanded(child: ListView.builder(itemBuilder: ((context, index) {})))
        ],
      ),
    ));
  }
}
