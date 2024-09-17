import 'package:aliexpress_clone/components/custom_search_bar.dart';
import 'package:aliexpress_clone/extensions/height_and_width.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      5.wBox,
      GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: const Icon(
          CupertinoIcons.back,
          size: 18,
        ),
      ),
      const Expanded(child: CustomSearchBar())
    ]);
  }
}
