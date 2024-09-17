import 'package:aliexpress_clone/components/home_screen_components/explore_tab_components/big_save_deals_widget.dart';
import 'package:aliexpress_clone/components/home_screen_components/explore_tab_components/bundle_deals_widget.dart';
import 'package:aliexpress_clone/components/home_screen_components/explore_tab_components/super_deals_widget.dart';
import 'package:aliexpress_clone/components/product_grid_view.dart';

import 'package:aliexpress_clone/repositry/product_model.dart';
import 'package:aliexpress_clone/utils/colors.dart';
import 'package:flutter/material.dart';

class ExploreTabHomeScreen extends StatelessWidget {
  const ExploreTabHomeScreen({
    super.key,
    required this.products,
  });
  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      thumbColor: AppColors.grey, // Set the color of the scrollbar
      radius: const Radius.circular(10), // Make the scrollbar edges rounded
      thickness: 3,

      child: CustomScrollView(
        slivers: [
          // Bundle Deals Widget
          SliverToBoxAdapter(
            child: BundleDealsWidget(products: products),
          ),
          // Spacer
          const SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          // Big Save Deals Widget
          SliverToBoxAdapter(
            child: BigSaveDealWidget(products: products),
          ),
          // Super Deals Widget
          SliverToBoxAdapter(
            child: SuperDealsWidget(products: products),
          ),
          // Spacer

          // Light Gray Divider
          SliverToBoxAdapter(
            child: Container(
              color: AppColors.lightGrey,
              height: 15,
              width: double.infinity,
            ),
          ),
          // Product Grid View as a Sliver
          ProductGridView(products: products),
        ],
      ),
    );
  }
}
