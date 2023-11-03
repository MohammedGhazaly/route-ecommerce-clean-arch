import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/utils/my_assets.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

ClipRRect buildCustomBottomNavigationBar(
    {required int selectedIndex,
    required Function(int) onTapFunction,
    required BuildContext context}) {
  return ClipRRect(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20.r),
      topRight: Radius.circular(20.r),
    ),
    child: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: MyColors.primaryColor,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      currentIndex: selectedIndex,
      onTap: onTapFunction,
      // selectedItemColor: Colors.transparent,
      // unselectedItemColor: Colors.transparent,
      items: [
        BottomNavigationBarItem(
            icon: CircleAvatar(
              foregroundColor:
                  selectedIndex == 0 ? MyColors.primaryColor : Colors.white,
              backgroundColor:
                  selectedIndex == 0 ? Colors.white : Colors.transparent,
              radius: 20.r,
              child: ImageIcon(
                size: 40.sp,
                const AssetImage(
                  MyAssets.notSelectedHomeIcon,
                ),
              ),
            ),
            label: "HOME"),
        BottomNavigationBarItem(
            icon: CircleAvatar(
              foregroundColor:
                  selectedIndex == 1 ? MyColors.primaryColor : Colors.white,
              backgroundColor:
                  selectedIndex == 1 ? Colors.white : Colors.transparent,
              radius: 20.r,
              child: ImageIcon(
                size: 40.sp,
                const AssetImage(
                  MyAssets.notSelectedCategoryIcon,
                ),
              ),
            ),
            label: "CATEGORY"),
        BottomNavigationBarItem(
            icon: CircleAvatar(
              foregroundColor:
                  selectedIndex == 2 ? MyColors.primaryColor : Colors.white,
              backgroundColor:
                  selectedIndex == 2 ? Colors.white : Colors.transparent,
              radius: 20.r,
              child: ImageIcon(
                size: 40.sp,
                const AssetImage(
                  MyAssets.notSelectedWishlistIcon,
                ),
              ),
            ),
            label: "WISHLIST"),
        BottomNavigationBarItem(
            icon: CircleAvatar(
              foregroundColor:
                  selectedIndex == 3 ? MyColors.primaryColor : Colors.white,
              backgroundColor:
                  selectedIndex == 3 ? Colors.white : Colors.transparent,
              radius: 20.r,
              child: ImageIcon(
                size: 40.sp,
                const AssetImage(
                  MyAssets.notSelectedAccountIcon,
                ),
              ),
            ),
            label: "ACCOUNT")
      ],
    ),
  );
}
