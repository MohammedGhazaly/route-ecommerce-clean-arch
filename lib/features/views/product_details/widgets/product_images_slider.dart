import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/dummy_models/item_model.dart';
import 'package:route_e_commerce/utils/my_colors.dart';
import 'package:route_e_commerce/utils/shared_widgets/item_card_header.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductImagesSlider extends StatefulWidget {
  const ProductImagesSlider({
    super.key,
    required this.itemDetails,
  });

  final DummyItemModel itemDetails;

  @override
  State<ProductImagesSlider> createState() => _ProductImagesSliderState();
}

class _ProductImagesSliderState extends State<ProductImagesSlider> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      width: double.infinity,
      child: Stack(
        children: [
          CarouselSlider.builder(
            itemCount: widget.itemDetails.imgUrl.length,
            itemBuilder: (context, itemIndex, pageViewIndex) {
              return ItemCardHeader(
                image: widget.itemDetails.imgUrl[itemIndex],
                isWishlisted: widget.itemDetails.isWishlisted,
              );
            },
            options: CarouselOptions(
              onPageChanged: (index, reson) {
                setState(() {
                  activeIndex = index;
                });
              },
              enlargeCenterPage: true,
              pageSnapping: true,
              padEnds: false,
              viewportFraction: 1,
              // enlargeFactor: 0.5,
              clipBehavior: Clip.none,
              height: 300.h,
              enableInfiniteScroll: true,
              autoPlay: false,
              // autoPlayInterval: const Duration(seconds: 4),
              scrollDirection: Axis.horizontal,
            ),
          ),
          Positioned.fill(
            bottom: 10.h,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedSmoothIndicator(
                effect: ExpandingDotsEffect(
                    radius: 8.r,
                    dotWidth: 12.w,
                    dotHeight: 12.w,
                    dotColor: Colors.grey,
                    activeDotColor: MyColors.primaryColor),
                activeIndex: activeIndex,
                count: widget.itemDetails.imgUrl.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
