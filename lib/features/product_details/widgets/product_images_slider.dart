import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/domain/entity/product_entity/product_response_entity.dart';
import 'package:route_e_commerce/utils/my_colors.dart';
import 'package:route_e_commerce/utils/shared_widgets/item_card_header.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductImagesSlider extends StatefulWidget {
  const ProductImagesSlider({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  State<ProductImagesSlider> createState() => _ProductImagesSliderState();
}

class _ProductImagesSliderState extends State<ProductImagesSlider> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310.h,
      width: double.infinity,
      child: Stack(
        children: [
          CarouselSlider.builder(
            itemCount: widget.product.images?.length ?? 0,
            itemBuilder: (context, itemIndex, pageViewIndex) {
              return ItemCardHeader(
                height: 315.h,
                image: widget.product.images![itemIndex],
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
              height: 310.h,
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
                count: widget.product.images!.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
