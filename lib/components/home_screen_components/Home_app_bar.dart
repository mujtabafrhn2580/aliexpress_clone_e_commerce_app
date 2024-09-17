import 'package:aliexpress_clone/components/custom_search_bar.dart';
import 'package:aliexpress_clone/repositry/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aliexpress_clone/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
    required this.tabController,
  });
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Image.asset(
                'images/aliexpress_logo.png',
                height: 35, // Adjust height for better appearance
              ),
              const Spacer(),
              GestureDetector(
                child: const Icon(CupertinoIcons.bell),
              ),
            ],
          ),
        ),
        const CustomSearchBar(),
        // Add a TabBar with the TabController
        TabBar(
          padding: const EdgeInsets.all(0),
          dividerColor: const Color.fromARGB(0, 255, 214, 64),
          controller: tabController,
          tabAlignment: TabAlignment.start,
          isScrollable: true,
          indicator: const BoxDecoration(),
          // Make TabBar scrollable

          labelColor: AppColors.black, // No indicator
          labelStyle: GoogleFonts.roboto(
            fontWeight: FontWeight.bold, // Bold text for selected tab
            fontSize: 17,
          ),
          unselectedLabelColor: AppColors.silver,

          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold, // Normal text for unselected tabs
            fontSize: 15,
          ),

          tabs: [
            for (final title in tabTitles)
              Tab(
                text: title,
              ),
          ],
        ),
      ],
    );
  }
}
