import 'package:aliexpress_clone/extensions/height_and_width.dart';
import 'package:aliexpress_clone/utils/colors.dart';
import 'package:aliexpress_clone/utils/text.dart';
import 'package:flutter/material.dart';

class AcountScreen extends StatelessWidget {
  const AcountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Chip(
                label: AppText.iconLabeText(text: ''),
              )
            ],
          ),
          AppText(
              text: 'My Orders',
              fontSize: 20,
              color: AppColors.black,
              fontWeight: FontWeight.bold),
          5.hBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Icon(
                  Icons.payment,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
