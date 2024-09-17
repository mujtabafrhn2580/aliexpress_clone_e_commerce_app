import 'package:flutter/material.dart';

import 'package:aliexpress_clone/components/home_screen_components/explore_tab_components/deals_helper_widgets.dart';
import 'package:aliexpress_clone/extensions/height_and_width.dart';
import 'package:aliexpress_clone/repositry/product_model.dart';
import 'package:aliexpress_clone/utils/colors.dart';
import 'package:aliexpress_clone/utils/text.dart';

class SuperDealsWidget extends StatelessWidget {
  const SuperDealsWidget({
    super.key,
    required this.products,
  });
  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.white,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          15.hBox,
          const AppText(
            text: 'SuperDeals',
            fontSize: 22,
            color: AppColors.black,
            fontWeight: FontWeight.w800,
          ),
          10.hBox,
          const SuperDealsSubHeading(),
          15.hBox,
          buildProductList(products, 'super-deals'),
          10.hBox,
        ],
      ),
    );
  }
}

class SuperDealsSubHeading extends StatelessWidget {
  const SuperDealsSubHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        AppText(
          text: 'Limited time 50% off',
          fontSize: 17,
          color: AppColors.black,
          fontWeight: FontWeight.normal,
        )
      ],
    );
  }
}
