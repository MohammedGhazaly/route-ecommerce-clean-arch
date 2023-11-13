import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:route_e_commerce/domain/entity/cart_entity/get_user_cart_entity.dart';
import 'package:route_e_commerce/features/cart/view/cart_view.dart';
import 'package:route_e_commerce/features/cart/view_model/cart_cubit/cart_cubit.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class IncDecWidget extends StatelessWidget {
  final GetUserCartProductsEntity getUserCartProductsEntity;

  const IncDecWidget({
    super.key,
    required this.getUserCartProductsEntity,
  });

  @override
  Widget build(BuildContext context) {
    var cartCubit = BlocProvider.of<CartCubit>(context, listen: true);
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        color: MyColors.primaryColor,
        borderRadius: BorderRadius.circular(
          100.r,
        ),
      ),
      child: Row(
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Icon(
              Icons.remove_circle_outline_rounded,
              color: Colors.white,
              size: 28.sp,
            ),
          ),
          Text(
            getUserCartProductsEntity.count.toString(),
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () async {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("Adding item")));
              await cartCubit.addToCart(
                  productId: getUserCartProductsEntity.product!.sId!);
              if (!context.mounted) return;
              Navigator.pushReplacementNamed(context, CartView.routeName);
            },
            icon: Icon(
              Icons.add_circle_outline_rounded,
              color: Colors.white,
              size: 28.sp,
            ),
          ),
        ],
      ),
    );
  }
}
