import 'package:aliexpress_clone/components/product_display_icon/product_display_icons_helper_widgets.dart';
import 'package:aliexpress_clone/extensions/height_and_width.dart';
import 'package:aliexpress_clone/extensions/round.dart';
import 'package:aliexpress_clone/repositry/product_model.dart';

import 'package:flutter/material.dart';

class ProductDisplayIconBundleDeals extends StatelessWidget {
  const ProductDisplayIconBundleDeals({
    super.key,
    required this.product,
  });
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'images/itemimages/${product.image}',
          fit: BoxFit.cover,
          height: 130,
          width: 130,
        ),
        ProductPriceOnly(price: product.price.roundProductPrice()),
        RatingAndSoldRow(rating: 4.8, sold: product.sold),
        2.hBox,
        const NewShopperOnlyWidget(),
      ],
    );
  }
}
