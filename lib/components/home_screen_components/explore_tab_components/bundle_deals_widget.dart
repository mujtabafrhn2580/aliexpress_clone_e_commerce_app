import 'package:aliexpress_clone/components/home_screen_components/explore_tab_components/deals_helper_widgets.dart';
import 'package:aliexpress_clone/extensions/height_and_width.dart';
import 'package:aliexpress_clone/repositry/product_model.dart';
import 'package:aliexpress_clone/utils/colors.dart';
import 'package:aliexpress_clone/utils/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BundleDealsWidget extends StatelessWidget {
  const BundleDealsWidget({
    super.key,
    required this.products,
  });

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 0.42],
          colors: [
            AppColors.veryLightYellow,
            AppColors.white,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          15.hBox,
          const AppText(
            text: 'Bundle deals',
            fontSize: 22,
            color: AppColors.black,
            fontWeight: FontWeight.w800,
          ),
          10.hBox,
          const BundleDealsSubHeading(),
          15.hBox,
          buildProductList(products, 'bundle-deals'),
        ],
      ),
    );
  }
}

//This will be the subheading which will display Any 3 items | From US 4.89 >
class BundleDealsSubHeading extends StatelessWidget {
  const BundleDealsSubHeading({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Any3ItemsTag(),
        AppText(
            text: ' | ',
            fontSize: 17,
            color: AppColors.black,
            fontWeight: FontWeight.bold),
        FromUS449Tag(),
        Icon(
          Icons.arrow_forward_ios,
          size: 17,
        )
      ],
    );
  }
}

class Any3ItemsTag extends StatelessWidget {
  const Any3ItemsTag({super.key});

  @override
  Widget build(BuildContext context) {
    return buildViewForTag(
      AppColors.yellow,
      RichText(
        text: TextSpan(
          children: [
            buildTextSpanNormal('Any'),
            buildTextSpanBold(' 3+'),
            buildTextSpanNormal('items')
          ],
        ),
      ),
    );
  }
}

class FromUS449Tag extends StatelessWidget {
  const FromUS449Tag({super.key});

  @override
  Widget build(BuildContext context) {
    return buildViewForTag(
      AppColors.yellow,
      RichText(
        text: TextSpan(
          children: [
            buildTextSpanNormal('From US'),
            buildTextSpanBold(' \$4.49'),
          ],
        ),
      ),
    );
  }
}
