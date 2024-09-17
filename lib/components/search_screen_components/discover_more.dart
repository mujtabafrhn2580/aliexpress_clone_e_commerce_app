import 'package:aliexpress_clone/utils/colors.dart';
import 'package:aliexpress_clone/utils/text.dart';
import 'package:flutter/material.dart';

class DiscoverMore extends StatelessWidget {
  const DiscoverMore({
    super.key,
    required this.discoverMoreItem,
  });

  final String discoverMoreItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.lightGrey,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8),
        ),
        child: AppText(
            text: discoverMoreItem,
            fontSize: 10,
            color: AppColors.black,
            fontWeight: FontWeight.normal),
      ),
    );
  }
}
