import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class CustomProductDetailsButton extends StatelessWidget {
  const CustomProductDetailsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: MyColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      onPressed: () {},
      icon: const Icon(Icons.add_shopping_cart_outlined),
      label: const Text(
        "Add to cart",
      ),
    );
  }
}
