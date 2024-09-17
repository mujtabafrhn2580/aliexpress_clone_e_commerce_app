import 'package:aliexpress_clone/components/product_display_icon/product_display_icon_big_save.dart';
import 'package:aliexpress_clone/components/product_display_icon/product_display_icon_bundle_deals.dart';
import 'package:aliexpress_clone/components/product_display_icon/product_display_icon_main.dart';
import 'package:aliexpress_clone/components/product_display_icon/product_display_icon_super_deals.dart';

import 'package:aliexpress_clone/repositry/product_model.dart';
import 'package:aliexpress_clone/utils/colors.dart';
import 'package:aliexpress_clone/utils/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildProductList(List<ProductModel> products, String section) {
  return SizedBox(
    height: 200,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: products.length + 1, // Including "View More" at the end
      itemBuilder: (context, index) {
        if (index == products.length) {
          return buildViewMore(); // "View More" widget
        }

        // Call the factory method to get the correct product widget based on the section
        return Padding(
          padding: const EdgeInsets.only(left: 5),
          child: getProductIconBySection(section, products[index]),
        );
      },
    ),
  );
}

// Factory method to return the appropriate product icon widget based on the section
Widget getProductIconBySection(String section, ProductModel product) {
  switch (section) {
    case 'bundle-deals':
      return ProductDisplayIconBundleDeals(product: product);
    case 'big-save':
      return ProductDisplayBigSaveIcon(product: product);
    case 'super-deals':
      return ProductDisplaySuperDealsIcon(product: product);
    default:
      return ProductDisplayIconMain(
          product: product); // Default widget if no section matches
  }
}

//It is the last widget showed after all the products are loaded in deals widget(super deals, bundl edeals, and big save)
Widget buildViewMore() {
  return Padding(
    padding: const EdgeInsets.only(left: 5),
    child: Container(
      color: AppColors.white,
      margin: const EdgeInsets.only(bottom: 9),
      width: 120,
      height: 40,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(CupertinoIcons.chevron_right_circle),
          SizedBox(height: 3),
          AppText(
            text: 'View more',
            fontSize: 12,
            color: AppColors.black,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    ),
  );
}

//Used in deals tags
TextSpan buildTextSpanBold(String text) {
  return TextSpan(
    text: text,
    style: GoogleFonts.roboto(
      fontSize: 17,
      color: AppColors.black,
      fontWeight: FontWeight.bold,
    ),
  );
}

//used in the deals tags
TextSpan buildTextSpanNormal(String text) {
  return TextSpan(
    text: text,
    style: GoogleFonts.roboto(
      fontSize: 17,
      color: AppColors.black,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget buildViewForTag(Color color, Widget child) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: const [0.5, 0.5],
        colors: [
          AppColors.transparent,
          color,
        ],
      ),
    ),
    child: child,
  );
}
