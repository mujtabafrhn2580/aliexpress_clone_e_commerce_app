import 'package:aliexpress_clone/utils/colors.dart';
import 'package:aliexpress_clone/utils/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.changePageIndex,
  });

  final int selectedIndex;
  final void Function(int) changePageIndex;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      backgroundColor: AppColors.white,
      elevation: 0,
      type: BottomNavigationBarType
          .fixed, // Ensures the items stay equally spaced
      selectedItemColor: AppColors.crimson, // Define selected item color
      unselectedItemColor: AppColors.black,
      onTap: (value) {
        changePageIndex(value);
      }, // Define unselected item color
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: selectedIndex == 0
              ? const Icon(
                  CupertinoIcons.house_alt_fill,
                  color: AppColors.crimson,
                )
              : const Icon(
                  CupertinoIcons.house_alt,
                  color: AppColors.black,
                ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: selectedIndex == 1
              ? const Icon(
                  Icons.search,
                  color: AppColors.crimson,
                )
              : const Icon(
                  Icons.search_outlined,
                  color: AppColors.black,
                ),
          label: 'Shop',
        ),
        const BottomNavigationBarItem(
          icon: Choice(),
          label: '', // No label for this custom item
        ),
        BottomNavigationBarItem(
          icon: selectedIndex == 3
              ? const Icon(
                  CupertinoIcons.cart_fill,
                  color: AppColors.crimson,
                )
              : const Icon(
                  CupertinoIcons.cart,
                  color: AppColors.black,
                ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: selectedIndex == 4
              ? const Icon(
                  Icons.person,
                  color: AppColors.crimson,
                )
              : const Icon(
                  Icons.person_outline,
                  color: AppColors.black,
                ),
          label: 'Account',
        ),
      ],
    );
  }
}

class Choice extends StatelessWidget {
  const Choice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 2.5,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: AppColors.yellow,
      ),
      child: const AppText(
        text: 'Choice',
        fontSize: 17, // Adjust font size to fit well in the BottomNavigationBar
        color: AppColors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
