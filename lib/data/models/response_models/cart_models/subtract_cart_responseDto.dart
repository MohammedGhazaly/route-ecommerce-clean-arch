import 'package:route_e_commerce/domain/entity/cart_entity/subtract_cart_response_entity.dart';

class SubtractCartResponseDto extends SubtractCartResponseEntity {
  String? message;
  SubtractCartResponseDto(
      {super.status, super.numOfCartItems, super.data, this.message});

  SubtractCartResponseDto.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    numOfCartItems = json['numOfCartItems'];
    data = json['data'] != null
        ? new SubtractCartDataDto.fromJson(json['data'])
        : null;
  }
}

class SubtractCartDataDto extends SubtractCartDataEntity {
  SubtractCartDataDto(
      {super.sId,
      super.cartOwner,
      super.products,
      super.createdAt,
      super.updatedAt,
      super.iV,
      super.totalCartPrice});

  SubtractCartDataDto.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    cartOwner = json['cartOwner'];
    if (json['products'] != null) {
      products = <SubtractCartProductsDto>[];
      json['products'].forEach((v) {
        products!.add(new SubtractCartProductsDto.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    totalCartPrice = json['totalCartPrice'];
  }
}

class SubtractCartProductsDto extends SubtractCartProductsEntity {
  SubtractCartProductsDto({super.count, super.sId, super.product, super.price});

  SubtractCartProductsDto.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    sId = json['_id'];
    product = json['product'] != null
        ? new SubtractCartProductDto.fromJson(json['product'])
        : null;
    price = json['price'];
  }
}

class SubtractCartProductDto extends SubtractCartProductEntity {
  SubtractCartProductDto(
      {super.sId,
      super.title,
      super.quantity,
      super.imageCover,
      super.ratingsAverage,
      super.id});

  SubtractCartProductDto.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    quantity = json['quantity'];
    imageCover = json['imageCover'];

    ratingsAverage = json['ratingsAverage'];
  }
}
