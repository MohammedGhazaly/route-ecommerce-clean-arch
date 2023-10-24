import 'package:flutter/material.dart';
import 'package:route_e_commerce/utils/my_assets.dart';

class DummyItemModel {
  final List<String> imgUrl;
  final String name;
  final String description;
  final double newPrice;
  final double oldPrice;
  final double avgRating;
  final int ratingCount;
  final int itemsSold;
  final List<int> availableSizes;
  final List<Color> availableColors;
  final bool isWishlisted;
  final int itemsInCart;

  DummyItemModel(
      {required this.imgUrl,
      required this.name,
      required this.description,
      required this.newPrice,
      required this.oldPrice,
      required this.avgRating,
      required this.ratingCount,
      required this.itemsSold,
      required this.availableSizes,
      required this.availableColors,
      this.isWishlisted = false,
      this.itemsInCart = 1});
}

final List<DummyItemModel> dummyItemData = [
  DummyItemModel(
    imgUrl: [
      MyAssets.shoesItemImage1,
      MyAssets.shoesItemImage2,
      MyAssets.shoesItemImage3
    ],
    name: "Nike Air JordonNike shoes flexible",
    description:
        "Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories, more text here lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem.",
    newPrice: 1000,
    oldPrice: 1300,
    avgRating: 4.8,
    ratingCount: 7500,
    itemsSold: 3230,
    availableSizes: [38, 39, 40, 41, 42],
    availableColors: [
      Colors.black,
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.yellow
    ],
  ),
  DummyItemModel(
      imgUrl: [
        MyAssets.shoesItemImage1,
        MyAssets.shoesItemImage2,
        MyAssets.shoesItemImage3
      ],
      name: "Nike Air JordonNike shoes flexible",
      description:
          "Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories, more text here lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem.",
      newPrice: 1000,
      oldPrice: 1300,
      avgRating: 4.8,
      ratingCount: 7500,
      itemsSold: 3230,
      availableSizes: [38, 39, 40, 41, 42],
      availableColors: [
        Colors.black,
        Colors.red,
        Colors.blue,
        Colors.green,
        Colors.yellow
      ],
      isWishlisted: true),
  DummyItemModel(
    imgUrl: [
      MyAssets.shoesItemImage1,
      MyAssets.shoesItemImage2,
      MyAssets.shoesItemImage3
    ],
    name: "Nike Air JordonNike shoes flexible",
    description:
        "Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories, more text here lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem.",
    newPrice: 1000,
    oldPrice: 1300,
    avgRating: 4.8,
    ratingCount: 7500,
    itemsSold: 3230,
    availableSizes: [38, 39, 40, 41, 42],
    availableColors: [
      Colors.black,
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.yellow
    ],
  ),
  DummyItemModel(
      imgUrl: [
        MyAssets.shoesItemImage1,
        MyAssets.shoesItemImage2,
        MyAssets.shoesItemImage3
      ],
      name: "Nike Air JordonNike shoes flexible",
      description:
          "Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories, more text here lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem.",
      newPrice: 1000,
      oldPrice: 1300,
      avgRating: 4.8,
      ratingCount: 7500,
      itemsSold: 3230,
      availableSizes: [38, 39, 40, 41, 42],
      availableColors: [
        Colors.black,
        Colors.red,
        Colors.blue,
        Colors.green,
        Colors.yellow
      ],
      isWishlisted: true),
  DummyItemModel(
    imgUrl: [
      MyAssets.shoesItemImage1,
      MyAssets.shoesItemImage2,
      MyAssets.shoesItemImage3
    ],
    name: "Nike Air JordonNike shoes flexible",
    description:
        "Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories, more text here lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem.",
    newPrice: 1000,
    oldPrice: 1300,
    avgRating: 4.8,
    ratingCount: 7500,
    itemsSold: 3230,
    availableSizes: [38, 39, 40, 41, 42],
    availableColors: [
      Colors.black,
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.yellow
    ],
  ),
  DummyItemModel(
      imgUrl: [
        MyAssets.shoesItemImage1,
        MyAssets.shoesItemImage2,
        MyAssets.shoesItemImage3
      ],
      name: "Nike Air JordonNike shoes flexible",
      description:
          "Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories, more text here lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem.",
      newPrice: 1000,
      oldPrice: 1300,
      avgRating: 4.8,
      ratingCount: 7500,
      itemsSold: 3230,
      availableSizes: [38, 39, 40, 41, 42],
      availableColors: [
        Colors.black,
        Colors.red,
        Colors.blue,
        Colors.green,
        Colors.yellow
      ],
      isWishlisted: true),
  DummyItemModel(
    imgUrl: [
      MyAssets.shoesItemImage1,
      MyAssets.shoesItemImage2,
      MyAssets.shoesItemImage3
    ],
    name: "Nike Air JordonNike shoes flexible",
    description:
        "Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories, more text here lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem.",
    newPrice: 1000,
    oldPrice: 1300,
    avgRating: 4.8,
    ratingCount: 7500,
    itemsSold: 3230,
    availableSizes: [38, 39, 40, 41, 42],
    availableColors: [
      Colors.black,
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.yellow
    ],
  ),
  DummyItemModel(
      imgUrl: [
        MyAssets.shoesItemImage1,
        MyAssets.shoesItemImage2,
        MyAssets.shoesItemImage3
      ],
      name: "Nike Air JordonNike shoes flexible",
      description:
          "Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories, more text here lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem.",
      newPrice: 1000,
      oldPrice: 1300,
      avgRating: 4.8,
      ratingCount: 7500,
      itemsSold: 3230,
      availableSizes: [38, 39, 40, 41, 42],
      availableColors: [
        Colors.black,
        Colors.red,
        Colors.blue,
        Colors.green,
        Colors.yellow
      ],
      isWishlisted: true),
  DummyItemModel(
    imgUrl: [
      MyAssets.shoesItemImage1,
      MyAssets.shoesItemImage2,
      MyAssets.shoesItemImage3
    ],
    name: "Nike Air JordonNike shoes flexible",
    description:
        "Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories, more text here lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem.",
    newPrice: 1000,
    oldPrice: 1300,
    avgRating: 4.8,
    ratingCount: 7500,
    itemsSold: 3230,
    availableSizes: [38, 39, 40, 41, 42],
    availableColors: [
      Colors.black,
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.yellow
    ],
  ),
  DummyItemModel(
      imgUrl: [
        MyAssets.shoesItemImage1,
        MyAssets.shoesItemImage2,
        MyAssets.shoesItemImage3
      ],
      name: "Nike Air JordonNike shoes flexible",
      description:
          "Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories, more text here lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem.",
      newPrice: 1000,
      oldPrice: 1300,
      avgRating: 4.8,
      ratingCount: 7500,
      itemsSold: 3230,
      availableSizes: [38, 39, 40, 41, 42],
      availableColors: [
        Colors.black,
        Colors.red,
        Colors.blue,
        Colors.green,
        Colors.yellow
      ],
      isWishlisted: true),
  DummyItemModel(
    imgUrl: [
      MyAssets.shoesItemImage1,
      MyAssets.shoesItemImage2,
      MyAssets.shoesItemImage3
    ],
    name: "Nike Air JordonNike shoes flexible",
    description:
        "Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories, more text here lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem.",
    newPrice: 1000,
    oldPrice: 1300,
    avgRating: 4.8,
    ratingCount: 7500,
    itemsSold: 3230,
    availableSizes: [38, 39, 40, 41, 42],
    availableColors: [
      Colors.black,
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.yellow
    ],
  ),
  DummyItemModel(
      imgUrl: [
        MyAssets.shoesItemImage1,
        MyAssets.shoesItemImage2,
        MyAssets.shoesItemImage3
      ],
      name: "Nike Air JordonNike shoes flexible",
      description:
          "Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories, more text here lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem.",
      newPrice: 1000,
      oldPrice: 1300,
      avgRating: 4.8,
      ratingCount: 7500,
      itemsSold: 3230,
      availableSizes: [38, 39, 40, 41, 42],
      availableColors: [
        Colors.black,
        Colors.red,
        Colors.blue,
        Colors.green,
        Colors.yellow
      ],
      isWishlisted: true),
  DummyItemModel(
    imgUrl: [
      MyAssets.shoesItemImage1,
      MyAssets.shoesItemImage2,
      MyAssets.shoesItemImage3
    ],
    name: "Nike Air JordonNike shoes flexible",
    description:
        "Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories, more text here lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem.",
    newPrice: 1000,
    oldPrice: 1300,
    avgRating: 4.8,
    ratingCount: 7500,
    itemsSold: 3230,
    availableSizes: [38, 39, 40, 41, 42],
    availableColors: [
      Colors.black,
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.yellow
    ],
  ),
  DummyItemModel(
      imgUrl: [
        MyAssets.shoesItemImage1,
        MyAssets.shoesItemImage2,
        MyAssets.shoesItemImage3
      ],
      name: "Nike Air JordonNike shoes flexible",
      description:
          "Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories, more text here lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem.",
      newPrice: 1000,
      oldPrice: 1300,
      avgRating: 4.8,
      ratingCount: 7500,
      itemsSold: 3230,
      availableSizes: [38, 39, 40, 41, 42],
      availableColors: [
        Colors.black,
        Colors.red,
        Colors.blue,
        Colors.green,
        Colors.yellow
      ],
      isWishlisted: true),
];
