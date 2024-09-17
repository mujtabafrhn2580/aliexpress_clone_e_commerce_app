import 'package:aliexpress_clone/extensions/height_and_width.dart';
import 'package:aliexpress_clone/repositry/reccomended_items.dart';
import 'package:aliexpress_clone/utils/colors.dart';
import 'package:aliexpress_clone/utils/text.dart';
import 'package:flutter/material.dart';

class RecommendedCategories extends StatelessWidget {
  const RecommendedCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      width: double.infinity,
      color: AppColors.veryLightPurble,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 15, left: 15),
            child: AppText(
                text: 'Recommended',
                fontSize: 16,
                color: AppColors.purble,
                fontWeight: FontWeight.bold),
          ),
          15.hBox,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GridView.builder(
                itemCount: recommendedItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, // Two columns
                    crossAxisSpacing: 5, // 5 pixels of space between columns
                    mainAxisSpacing: 5,
                    childAspectRatio: 0.72 // 5 pixels of space between rows
                    ),
                itemBuilder: (context, index) => RecommendedCategoriesItem(
                  title: recommendedItems[index].title,
                  image: recommendedItems[index].image,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendedCategoriesItem extends StatelessWidget {
  const RecommendedCategoriesItem({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              'images/itemimages/$image',
              fit: BoxFit.cover,
              width: 80,
              height: 80,
            ),
            Positioned(
              bottom: 7,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColors.purble),
                ),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  child: const AppText(
                    text: '300+ viewed',
                    color: AppColors.purble,
                    fontWeight: FontWeight.normal,
                    fontSize: 9,
                  ),
                ),
              ),
            ),
          ],
        ),
        5.hBox,
        AppText(
          text: title,
          fontSize: 12,
          color: AppColors.black,
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
