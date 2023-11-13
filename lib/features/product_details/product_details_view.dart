import 'package:flutter/material.dart';
import 'package:route_e_commerce/domain/entity/product_entity/product_response_entity.dart';
import 'package:route_e_commerce/features/product_details/widgets/product_details_view_body.dart';

class ProductDetailsView extends StatelessWidget {
  static String routeName = "product-details-view";
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    ProductEntity productDetails =
        ModalRoute.of(context)!.settings.arguments as ProductEntity;

    return Scaffold(
      body: ProductDetailsViewBody(product: productDetails),
    );
  }
}
