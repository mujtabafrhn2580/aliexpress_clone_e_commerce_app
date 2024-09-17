import 'package:aliexpress_clone/components/search_screen_components/discover_more.dart';
import 'package:aliexpress_clone/components/search_screen_components/recommended_categories.dart';
import 'package:aliexpress_clone/components/search_screen_components/search_app_bar.dart';
import 'package:aliexpress_clone/extensions/height_and_width.dart';
import 'package:aliexpress_clone/utils/colors.dart';
import 'package:aliexpress_clone/utils/text.dart';
import 'package:aliexpress_clone/repositry/discover_more_items.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.hBox,
            const SearchAppBar(),
            10.hBox,
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: AppText(
                text: 'Discover more',
                fontSize: 16,
                color: AppColors.black,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.left,
              ),
            ),
            10.hBox,
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Wrap(
                runSpacing: 8,
                children: [
                  for (final item in discoverMoreItems)
                    DiscoverMore(discoverMoreItem: item),
                ],
              ),
            ),
            10.hBox,
            const RecommendedCategories()
          ],
        ),
      ),
    );
  }
}
