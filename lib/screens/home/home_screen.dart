import 'package:aliexpress_clone/components/home_screen_components/Home_app_bar.dart';
import 'package:aliexpress_clone/repositry/category.dart';
import 'package:aliexpress_clone/repositry/dummydata.dart';
import 'package:aliexpress_clone/repositry/product_model.dart';
import 'package:aliexpress_clone/screens/home/category_section_home_screen.dart';
import 'package:aliexpress_clone/screens/home/explore_tab_home_screen.dart';
import 'package:aliexpress_clone/screens/search_screen/search_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Initialize TabController
    _tabController = TabController(length: tabTitles.length, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of TabController
    _tabController.dispose();
    super.dispose();
  }

  List<ProductModel> getProducts(
      List<ProductModel> allProducts, ProductCategory productCategory) {
    return allProducts
        .where((e) => e.categories.contains(productCategory))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const SearchScreen()),
            );
          },
          child: HomeAppBar(
            tabController: _tabController,
          ),
        ),
        Expanded(
          // This makes sure the TabBarView fills the remaining space
          child: TabBarView(
            controller: _tabController,
            children: [
              ExploreTabHomeScreen(
                products: dummyData,
              ),
              for (int i = 1; i < tabTitles.length; i++)
                CategorySectionHomeScreen(
                  products: getProducts(dummyData, ProductCategory.values[i]),
                )
            ],
          ),
        ),
      ],
    );
  }
}
