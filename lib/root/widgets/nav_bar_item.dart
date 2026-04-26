import 'package:flutter/material.dart';
import 'package:test2/core/models/nav_bar_model.dart';
import 'package:test2/root/widgets/nav_bar_data.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({super.key, required this.isSelected, required this.model});

  final bool isSelected;
  final NavBarModel model;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 50,
      duration: const Duration(milliseconds: 250),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.black.withAlpha(39) : Colors.transparent,
        borderRadius: .circular(80),
      ),
      child: NavBarData(isSelected: isSelected, model: model),
    );
  }
}
