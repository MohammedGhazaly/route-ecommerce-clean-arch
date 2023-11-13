import 'package:route_e_commerce/domain/entity/cart_entity/remove_item_response_entity.dart';

class RemoveItemResponseDto extends RemoveItemResponseEntity {
  RemoveItemResponseDto({super.status, super.numOfCartItems, super.data});

  RemoveItemResponseDto.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    numOfCartItems = json['numOfCartItems'];
    data = json['data'] != null
        ? new RemoveItemDataDto.fromJson(json['data'])
        : null;
  }
}

class RemoveItemDataDto extends RemoveItemDataEntity {
  RemoveItemDataDto(
      {super.sId,
      super.cartOwner,
      super.products,
      super.createdAt,
      super.updatedAt,
      super.iV,
      super.totalCartPrice});

  RemoveItemDataDto.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    cartOwner = json['cartOwner'];
    if (json['products'] != null) {
      products = <RemoveItemProductsDto>[];
      json['products'].forEach((v) {
        products!.add(new RemoveItemProductsDto.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    totalCartPrice = json['totalCartPrice'];
  }
}

class RemoveItemProductsDto extends RemoveItemProductsEntity {
  RemoveItemProductsDto({super.count, super.sId, super.product, super.price});

  RemoveItemProductsDto.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    sId = json['_id'];
    product = json['product'] != null
        ? new RemoveItemProductDto.fromJson(json['product'])
        : null;
    price = json['price'];
  }
}

class RemoveItemProductDto extends RemoveItemProductEntity {
  RemoveItemProductDto(
      {super.sId,
      super.title,
      super.quantity,
      super.imageCover,
      super.ratingsAverage,
      super.id});

  RemoveItemProductDto.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    quantity = json['quantity'];
    imageCover = json['imageCover'];

    ratingsAverage = json['ratingsAverage'];
    id = json['id'];
  }
}
