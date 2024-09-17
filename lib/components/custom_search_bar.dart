import 'package:aliexpress_clone/extensions/height_and_width.dart';
import 'package:flutter/cupertino.dart';
import 'package:aliexpress_clone/utils/colors.dart';
import 'package:aliexpress_clone/utils/text.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: AppColors.black),
          color: AppColors.white, // Background color of the search bar
        ),
        child: Row(
          children: [
            const Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: AppText(
                    text: 'Search...',
                    fontSize: 14,
                    color: AppColors.black,
                    fontWeight: FontWeight.normal,
                  )),
            ),
            const Icon(
              Icons.camera_alt_outlined,
              color: AppColors.silver,
              size: 25,
            ),
            4.wBox,
            Container(
              margin: const EdgeInsets.all(2),
              padding: const EdgeInsets.symmetric(
                  horizontal: 15, vertical: 5), // Padding around the icon
              decoration: BoxDecoration(
                color: AppColors.black, // Background color for the icon
                borderRadius: BorderRadius.circular(
                    30), // Optional: round corners for the icon's background
              ),
              child: const Icon(
                CupertinoIcons.search,
                size: 18, // Icon size
                color: AppColors.white, // Icon color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
