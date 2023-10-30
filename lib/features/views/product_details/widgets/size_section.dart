import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/dummy_models/item_model.dart';
import 'package:route_e_commerce/features/views/product_details/widgets/product_size_widget.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class SizeSection extends StatefulWidget {
  final DummyItemModel itemDetails;

  const SizeSection({super.key, required this.itemDetails});

  @override
  State<SizeSection> createState() => _SizeSectionState();
}

class _SizeSectionState extends State<SizeSection> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Size",
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
            children: List.generate(widget.itemDetails.availableSizes.length,
                (index) {
          return InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              activeIndex = index;
              setState(() {});
            },
            child: ProductSizeWidget(
              size: widget.itemDetails.availableSizes[index],
              isSelected: activeIndex == index,
            ),
          );
        }))
      ],
    );
  }
}
