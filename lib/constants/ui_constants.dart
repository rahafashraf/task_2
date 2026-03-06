import 'package:flutter/material.dart';
import '../ui_model/nav_item.dart';
import '../widgets/nav_screen.dart';

class UiConstants {
  static List<NavItem> navItems = [
    NavItem(
      label: "Home",
      icon: Icons.home ,
      page: const NavPage(label: 'Home'),
    ),
    NavItem(
      label: "Favorite",
      icon: Icons.favorite_outlined,
      page: const NavPage(label: 'Favorite',),
    ),
    NavItem(
      label: "Profile",
      icon: Icons.person,
      page: NavPage(label: 'Profile',),
    ),


  ];
}
