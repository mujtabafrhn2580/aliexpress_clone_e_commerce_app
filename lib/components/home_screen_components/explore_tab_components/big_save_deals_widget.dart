import 'package:aliexpress_clone/components/home_screen_components/explore_tab_components/deals_helper_widgets.dart';
import 'package:aliexpress_clone/extensions/height_and_width.dart';
import 'package:aliexpress_clone/repositry/product_model.dart';
import 'package:aliexpress_clone/utils/colors.dart';
import 'package:aliexpress_clone/utils/text.dart';
import 'package:flutter/material.dart';

class BigSaveDealWidget extends StatelessWidget {
  const BigSaveDealWidget({
    super.key,
    required this.products,
  });
  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.veryLightRed,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          15.hBox,
          const AppText(
            text: 'Big Save',
            fontSize: 22,
            color: AppColors.black,
            fontWeight: FontWeight.w800,
          ),
          10.hBox,
          const BigSaveSubHeading(),
          15.hBox,
          buildProductList(products, 'big-save'),
          10.hBox,
        ],
      ),
    );
  }
}

class BigSaveSubHeading extends StatelessWidget {
  const BigSaveSubHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        AppText(
            text: 'Big Brands',
            fontSize: 17,
            color: AppColors.black,
            fontWeight: FontWeight.normal),
        AppText(
            text: ' | ',
            fontSize: 17,
            color: AppColors.black,
            fontWeight: FontWeight.bold),
        QualityAssuranceTag()
      ],
    );
  }
}

class BigBrandsTag extends StatelessWidget {
  const BigBrandsTag({super.key});

  @override
  Widget build(BuildContext context) {
    return buildViewForTag(
      AppColors.lightPink,
      RichText(
        text: buildTextSpanNormal('Big Brands'),
      ),
    );
  }
}

class QualityAssuranceTag extends StatelessWidget {
  const QualityAssuranceTag({super.key});

  @override
  Widget build(BuildContext context) {
    return buildViewForTag(AppColors.lightPink,
        RichText(text: buildTextSpanBold('Quality assurance')));
  }
}
