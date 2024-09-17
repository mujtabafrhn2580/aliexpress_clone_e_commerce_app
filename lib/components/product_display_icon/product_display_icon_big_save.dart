import 'package:aliexpress_clone/components/product_display_icon/product_display_icons_helper_widgets.dart';
import 'package:aliexpress_clone/extensions/round.dart';
import 'package:aliexpress_clone/repositry/product_model.dart';
import 'package:aliexpress_clone/utils/colors.dart';

import 'package:flutter/material.dart';

class ProductDisplayBigSaveIcon extends StatelessWidget {
  const ProductDisplayBigSaveIcon({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'images/itemimages/${product.image}',
          height: 130,
          width: 130,
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
          width: 130,
          color: AppColors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductPriceOnly(price: product.price.roundProductPrice()),
              const SizedBox(height: 5),
              SaveAmount(saveAmount: product.price),
            ],
          ),
        ),
      ],
    );
  }
}
