import 'package:aliexpress_clone/components/product_display_icon/product_display_icon_main.dart';
import 'package:aliexpress_clone/repositry/product_model.dart';
import 'package:flutter/material.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    super.key,
    required this.products,
  });
  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Two columns
            crossAxisSpacing: 5, // 5 pixels of space between columns
            mainAxisSpacing: 5,
            childAspectRatio: 0.72 // 5 pixels of space between rows
            ),
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            if (index < products.length) {
              return ProductDisplayIconMain(product: products[index]);
            } else {
              return null; // Return null if index is out of bounds
            }
          },
          childCount:
              products.length, // Ensures only available products are built
        ),
      ),
    );
  }
}
