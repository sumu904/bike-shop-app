import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:two_wheelers_bd/features/nav_bar/cart/screen/checkout_page/checkout_page.dart';
import 'package:two_wheelers_bd/utils/colors.dart';

import 'account/screen/account_page.dart';
import 'cart/screen/cart_page.dart';
import 'category/screen/category_page.dart';
import 'home/screen/home_page.dart';
import 'live_chat/screen/live_chat_page.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  PersistentTabController controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
       HomePage(),
       CategoryPage(),
       LiveChatPage(),
       CartPage(),
       AccountPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.home_outlined,
          size: 34,
        ),
        title: ("Home"),
        activeColorPrimary: AppColors.primaryClr,
        inactiveColorPrimary: AppColors.black,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.grid_view_outlined,
          size: 30,
        ),
        title: ("Categories"),
        activeColorPrimary: AppColors.primaryClr,
        inactiveColorPrimary: AppColors.black,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.chat_bubble_outline,
          size: 28,
        ),
        title: ("Live Chat"),
        activeColorPrimary: AppColors.primaryClr,
        inactiveColorPrimary: AppColors.black,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.shopping_cart_outlined,
          size: 32,
        ),
        title: ("Cart"),
        activeColorPrimary: AppColors.primaryClr,
        inactiveColorPrimary: AppColors.black,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.person_2_outlined,
          size: 32,
        ),
        title: ("Account"),
        activeColorPrimary: AppColors.primaryClr,
        inactiveColorPrimary: AppColors.black,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineToSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: false,
      stateManagement: true,
      navBarHeight: 65,
     padding: EdgeInsets.all(8),
      navBarStyle: NavBarStyle.simple,
    );
  }
}
