import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          MyAssets.logo,
          color: MyColors.primaryColor,
        ),
        if (centerWidget != null) centerWidget!,
        InkWell(
          onTap: () {},
          child: ImageIcon(
            const AssetImage(MyAssets.shoppingCart),
            size: 36.sp,
            color: MyColors.primaryColor,
          ),
        )
      ],
    );
  }
}
