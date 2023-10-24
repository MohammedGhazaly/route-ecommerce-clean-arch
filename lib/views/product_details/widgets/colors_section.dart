import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/dummy_models/item_model.dart';
import 'package:route_e_commerce/utils/my_colors.dart';
import 'package:route_e_commerce/views/product_details/widgets/product_color_widget.dart';

class ColorsSection extends StatefulWidget {
  final DummyItemModel itemDetails;

  const ColorsSection({super.key, required this.itemDetails});

  @override
  State<ColorsSection> createState() => _ColorsSectionState();
}

class _ColorsSectionState extends State<ColorsSection> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Color",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: MyColors.darkPrimaryColor,
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Row(
            children: List.generate(widget.itemDetails.availableColors.length,
                (index) {
          return InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              activeIndex = index;
              setState(() {});
            },
            child: ProductColorWidget(
              productColor: widget.itemDetails.availableColors[index],
              isSelected: activeIndex == index,
            ),
          );
        }))
      ],
    );
  }
}
