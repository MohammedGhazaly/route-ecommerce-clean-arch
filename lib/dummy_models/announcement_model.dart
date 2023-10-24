import 'package:route_e_commerce/utils/my_assets.dart';

class AnnouncementModel {
  final String imagePath;
  final String announcementDiscount;
  final String announcementText;
  final bool isImageDark;
  final bool isTextLeft;
  final bool isTextDark;
  final bool isButtonDark;

  AnnouncementModel({
    required this.imagePath,
    required this.announcementDiscount,
    required this.announcementText,
    this.isImageDark = false,
    this.isTextLeft = true,
    this.isTextDark = true,
    this.isButtonDark = true,
  });
}

final List<AnnouncementModel> announcements = [
  AnnouncementModel(
    imagePath: MyAssets.announcement1,
    announcementDiscount: "25",
    announcementText: "for all Headphones\n&AirPods",
  ),
  AnnouncementModel(
      imagePath: MyAssets.announcement2,
      announcementDiscount: "30",
      announcementText: "for all Makeup\n&Skincare",
      isImageDark: true,
      isTextLeft: false,
      isTextDark: false),
  AnnouncementModel(
    imagePath: MyAssets.announcement3,
    announcementDiscount: "20",
    announcementText: "for all Laptops\n&Mobiles",
    isButtonDark: false,
  ),
];
