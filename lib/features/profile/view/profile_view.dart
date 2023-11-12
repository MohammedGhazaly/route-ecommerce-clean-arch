import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/features/auth/views/login/login_view.dart';
import 'package:route_e_commerce/utils/my_assets.dart';
import 'package:route_e_commerce/utils/my_colors.dart';
import 'package:route_e_commerce/utils/shared_pref/shared_pref_utils.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    MyAssets.logo,
                    color: MyColors.primaryColor,
                  ),
                  TextButton.icon(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          foregroundColor: MyColors.primaryColor,
                          padding: EdgeInsets.symmetric(horizontal: 24.w),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: MyColors.primaryColor, width: 1),
                            borderRadius: BorderRadius.circular(50),
                          )),
                      onPressed: () async {
                        await SharedPrefUtils.removeData(key: "token");
                        if (!context.mounted) return;
                        Navigator.pushReplacementNamed(
                            context, LoginView.routeName);
                      },
                      icon: const Icon(Icons.logout),
                      label: const Text("Log out"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
