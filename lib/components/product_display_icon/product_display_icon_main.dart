import 'package:aliexpress_clone/components/product_display_icon/product_display_icons_helper_widgets.dart';
import 'package:aliexpress_clone/extensions/height_and_width.dart';
import 'package:aliexpress_clone/extensions/round.dart';
import 'package:aliexpress_clone/repositry/product_model.dart';
import 'package:aliexpress_clone/utils/colors.dart';
import 'package:aliexpress_clone/utils/text.dart';
import 'package:flutter/material.dart';

class ProductDisplayIconMain extends StatelessWidget {
  const ProductDisplayIconMain({
    super.key,
    required this.product,
  });
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final itemDisplayIconWidth = (screenWidth - 15) / 2;
    return SizedBox(
      width: itemDisplayIconWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              'images/itemimages/${product.image}',
              fit: BoxFit.cover,
              height: itemDisplayIconWidth,
              width: itemDisplayIconWidth,
            ),
          ),
          3.hBox,
          ProductDisplayIconMainRow1(item: product),
          ProductDisplayIconMainRow2(
            price: product.price,
            sold: product.sold.toString(),
          ),
          Container(
            padding: const EdgeInsets.only(left: 8),
            alignment: Alignment.centerLeft,
            child: AppText(
              text: '${product.sold.roundSoldProducts()} added to cart',
              fontSize: 13,
              color: AppColors.darkGrey,
              fontWeight: FontWeight.normal,
            ),
          )
        ],
      ),
    );
  }
}
