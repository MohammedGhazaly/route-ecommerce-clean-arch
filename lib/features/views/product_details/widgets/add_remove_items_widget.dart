import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/utils/my_colors.dart';

class AddRemoveItemsWidget extends StatefulWidget {
  final int itemsInCart;
  const AddRemoveItemsWidget({
    super.key,
    required this.itemsInCart,
  });

  @override
  State<AddRemoveItemsWidget> createState() => _AddRemoveItemsWidgetState();
}

class _AddRemoveItemsWidgetState extends State<AddRemoveItemsWidget> {
  late int itemsInCart;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    itemsInCart = widget.itemsInCart;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        color: MyColors.primaryColor,
        borderRadius: BorderRadius.circular(
          100.r,
        ),
      ),
      child: Row(
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              if (itemsInCart != 0) {
                itemsInCart--;
                setState(() {});
              }
            },
            icon: Icon(
              Icons.remove_circle_outline_rounded,
              color: Colors.white,
              size: 28.sp,
            ),
          ),
          Text(
            itemsInCart.toString(),
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              if (itemsInCart != 10) {
                itemsInCart++;
                setState(() {});
              }
            },
            icon: Icon(
              Icons.add_circle_outline_rounded,
              color: Colors.white,
              size: 28.sp,
            ),
          ),
        ],
      ),
    );
  }
}
