import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/dummy_models/announcement_model.dart';
import 'package:route_e_commerce/utils/my_colors.dart';
import 'package:route_e_commerce/views/home/widgets/custom_announdement_banner.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AnnouncementsSection extends StatefulWidget {
  const AnnouncementsSection({
    super.key,
  });

  @override
  State<AnnouncementsSection> createState() => _AnnouncementsSectionState();
}

class _AnnouncementsSectionState extends State<AnnouncementsSection> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: announcements.length,
          itemBuilder: (context, itemIndex, pageViewIndex) {
            return CustomAnnouncementBanner(
              announcement: announcements[itemIndex],
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
            height: 200.h,
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
              effect: WormEffect(
                  radius: 8.r,
                  dotWidth: 12.w,
                  dotHeight: 12.w,
                  dotColor: Colors.white,
                  activeDotColor: MyColors.primaryColor),
              activeIndex: activeIndex,
              count: announcements.length,
            ),
          ),
        ),
      ],
    );
  }
}
