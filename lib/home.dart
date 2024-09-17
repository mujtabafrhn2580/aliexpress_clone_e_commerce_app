import 'package:aliexpress_clone/components/custom_bottom_navigation_bar.dart';

import 'package:aliexpress_clone/screens/home/home_screen.dart';

import 'package:flutter/material.dart';

import 'package:aliexpress_clone/utils/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  int _pageIndex = 0;

  void _changePageIndex(int value) {
    setState(() {
      _pageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _pageIndex,
        changePageIndex: _changePageIndex,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
          child: HomeScreen(),
          // Add a TabBar with the TabController
        ),
      ),
    );
  }
}
