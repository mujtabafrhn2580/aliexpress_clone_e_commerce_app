import 'package:aliexpress_clone/repositry/product_model.dart';
import 'package:aliexpress_clone/utils/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aliexpress_clone/utils/colors.dart';
import 'package:aliexpress_clone/extensions/height_and_width.dart';
import 'package:aliexpress_clone/extensions/round.dart';

class ChoiceWidget extends StatelessWidget {
  const ChoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildContainer(
      color: AppColors.yellow,
      child: RichText(
        text: _buildTextSpan('Choice', AppColors.black),
      ),
    );
  }
}

//This is the small super deals tag used in the main section of products
class SuperDealWidget extends StatelessWidget {
  const SuperDealWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildContainer(
      color: AppColors.veryLightRed,
      child: RichText(
        text: TextSpan(
          children: [
            _buildTextSpan('Super', AppColors.black),
            _buildTextSpan('Deals', AppColors.crimson),
          ],
        ),
      ),
    );
  }
}

class ProductDisplayIconMainRow1 extends StatelessWidget {
  const ProductDisplayIconMainRow1({
    super.key,
    required this.item,
  });
  final ProductModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (item.isChoice) const ChoiceWidget(),
          if (item.isChoice) 2.wBox,
          if (item.isSuperDeal) const SuperDealWidget(),
          if (item.isSuperDeal) 3.wBox,
          Expanded(
            child: AppText(
              text: item.name,
              fontSize: 11,
              color: AppColors.black,
              fontWeight: FontWeight.w400,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}

class ProductDisplayIconMainRow2 extends StatelessWidget {
  const ProductDisplayIconMainRow2({
    super.key,
    required this.price,
    required this.sold,
  });

  final double price;
  final String sold;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8),
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: 'USD${price.roundProductPrice()} ',
            style: GoogleFonts.roboto(
              fontSize: 17.5,
              color: AppColors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: '$sold sold',
            style: GoogleFonts.roboto(
                color: AppColors.silver,
                fontSize: 13.5,
                fontWeight: FontWeight.w400),
          ),
        ]),
      ),
    );
  }
}

//Helping widget
Widget _buildContainer({
  required Color color,
  required Widget child,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(2),
      color: color,
    ),
    child: Center(child: child),
  );
}

//HelpingWidget
TextSpan _buildTextSpan(
  String text,
  Color color,
) {
  return TextSpan(
    text: text,
    style: GoogleFonts.roboto(
      color: color,
      fontSize: 10,
      fontWeight: FontWeight.bold,
    ),
  );
}

//Will be used in both Super deals and Big save
class ProductPriceOnly extends StatelessWidget {
  const ProductPriceOnly({
    super.key,
    required this.price,
  });
  final String price;

  @override
  Widget build(BuildContext context) {
    return AppText(
      text: 'USD$price',
      fontSize: 19,
      color: AppColors.black,
      fontWeight: FontWeight.bold,
    );
  }
}

//Will be used in bundle deals widget
class RatingAndSoldRow extends StatelessWidget {
  const RatingAndSoldRow({
    super.key,
    required this.rating,
    required this.sold,
  });
  final double rating;
  final int sold;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppText(
          text: rating.roundProductPrice(),
          fontSize: 14,
          color: AppColors.silver,
          fontWeight: FontWeight.normal,
        ),
        const Icon(
          CupertinoIcons.star_fill,
          color: AppColors.goldenYellow,
          size: 15,
        ),
        AppText(
            text: ' $sold sold',
            fontSize: 14,
            color: AppColors.silver,
            fontWeight: FontWeight.normal)
      ],
    );
  }
}

//Will be used in bundle deals section
class NewShopperOnlyWidget extends StatelessWidget {
  const NewShopperOnlyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      color: AppColors.lightYellow,
      child: const AppText(
        text: 'New shopper only',
        fontSize: 11,
        color: AppColors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

//Save amout for big save section
class SaveAmount extends StatelessWidget {
  const SaveAmount({
    super.key,
    required this.saveAmount,
  });
  final double saveAmount;

  @override
  Widget build(BuildContext context) {
    return AppText(
        text: 'Save USD${saveAmount.toInt()}',
        fontSize: 13,
        color: AppColors.crimson,
        fontWeight: FontWeight.bold);
  }
}

//This for thesuperdeals widget
class PercentageOff extends StatelessWidget {
  const PercentageOff({
    super.key,
    required this.percentageOff,
  });
  final int percentageOff;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 3),
      color: AppColors.lightCrimson,
      child: AppText(
          text: '$percentageOff% off',
          fontSize: 11,
          color: AppColors.white,
          fontWeight: FontWeight.bold),
    );
  }
}
