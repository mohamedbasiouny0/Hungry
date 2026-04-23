import 'package:flutter/cupertino.dart';

class NavBarModel {
  final IconData unselectedIcon;
  final IconData selectedIcon;
  final String label;

  const NavBarModel({required this.unselectedIcon, required this.label, required this.selectedIcon});
}
