import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class ItemCardHeader extends StatefulWidget {
  final double? height;
  final String image;

  const ItemCardHeader({
    super.key,
    required this.image,
    required this.height,
  });

  @override
  State<ItemCardHeader> createState() => _ItemCardHeaderState();
}

class _ItemCardHeaderState extends State<ItemCardHeader> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.r),
          child: CachedNetworkImage(
            imageUrl: widget.image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: widget.height,
          ),
        ),
        Positioned(
          top: 5.h,
          right: 15.h,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 15,
            child: IconButton(
              color: MyColors.primaryColor,
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border_rounded,
              ),
            ),
          ),
        )
      ],
    );
  }
}
