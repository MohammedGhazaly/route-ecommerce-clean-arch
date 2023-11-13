import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:route_e_commerce/features/cart/view_model/cart_cubit/cart_cubit.dart';
import 'package:route_e_commerce/utils/my_colors.dart';
import 'package:route_e_commerce/utils/shared_widgets/custom_snackbar_with_awesome_content.dart';

class CustomProductDetailsButton extends StatelessWidget {
  final String productId;
  const CustomProductDetailsButton({
    super.key,
    required this.productId,
  });

  @override
  Widget build(BuildContext context) {
    var cartCubit = BlocProvider.of<CartCubit>(context, listen: true);

    return BlocListener<CartCubit, CartState>(
      listener: (context, state) {
        if (state is CartItemAdded) {
          ScaffoldMessenger.of(context).showSnackBar(buildCustomSnackBar(
              color: MyColors.primaryColor,
              contentType: ContentType.success,
              title: "Item added successfully"));
        }
      },
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: MyColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        onPressed: () {
          cartCubit.addToCart(productId: productId);
        },
        child: cartCubit.isAdding
            ? LoadingAnimationWidget.inkDrop(color: Colors.white, size: 32.sp)
            : const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_shopping_cart_outlined),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Add to cart",
                  ),
                ],
              ),
        // label: CircularProgressIndicator(),
      ),
    );
  }
}
