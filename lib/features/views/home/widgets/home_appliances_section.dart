import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/features/views/home/widgets/item_card.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class HomeAppliancesSection extends StatelessWidget {
  const HomeAppliancesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Home Appliance",
          style: TextStyle(color: MyColors.darkPrimaryColor, fontSize: 18.sp),
        ),
        SizedBox(
          height: 16.h,
        ),
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.235,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.5.w),
                  child: const ItemCardHome(),
                );
              }),
        ),
      ],
    );
  }
}
