import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/features/cart/view/cart_view.dart';
import 'package:route_e_commerce/features/cart/view_model/cart_cubit/cart_cubit.dart';
import 'package:route_e_commerce/utils/my_assets.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class LogoWithShoppingCart extends StatelessWidget {
  final Widget? centerWidget;
  const LogoWithShoppingCart({
    super.key,
    this.centerWidget,
  });

  @override
  Widget build(BuildContext context) {
    CartCubit cartCubit = BlocProvider.of(context, listen: true);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          MyAssets.logo,
          color: MyColors.primaryColor,
        ),
        if (centerWidget != null) centerWidget!,
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, CartView.routeName);
          },
          child: Badge(
            label: Text(cartCubit.numberOfCartItems.toString()),
            alignment: Alignment.topLeft,
            offset: Offset(-3, -5),
            child: ImageIcon(
              const AssetImage(MyAssets.shoppingCart),
              size: 36.sp,
              color: MyColors.primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
