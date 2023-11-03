import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/dummy_models/announcement_model.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class CustomAnnouncementBanner extends StatelessWidget {
  final AnnouncementModel announcement;
  const CustomAnnouncementBanner({super.key, required this.announcement});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          announcement.imagePath,
          width: double.infinity,
          height: 215.h,
        ),
        Positioned(
          top: 5.h,
          left: announcement.isTextLeft ? 16.w : null,
          right: announcement.isTextLeft ? null : 16.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Up to\n${announcement.announcementDiscount} off",
                style: TextStyle(
                  height: 0,
                  color: announcement.isTextDark
                      ? MyColors.primaryColor
                      : Colors.white,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 0.h,
              ),
              Text(
                announcement.announcementText,
                style: TextStyle(
                  height: 0,
                  fontSize: 14.sp,
                  color: announcement.isTextDark
                      ? MyColors.primaryColor
                      : Colors.white,
                ),
              ),
              SizedBox(
                height: 0.h,
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 24),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r)),
                  backgroundColor: announcement.isButtonDark
                      ? MyColors.primaryColor
                      : Colors.white,
                  foregroundColor: announcement.isButtonDark
                      ? Colors.white
                      : MyColors.primaryColor,
                ),
                child: Text(
                  "Shop Now",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
