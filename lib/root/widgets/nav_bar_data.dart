import 'package:flutter/material.dart';
import 'package:test2/core/constant/app_styles.dart';
import 'package:test2/core/models/nav_bar_model.dart';

class NavBarData extends StatelessWidget {
  const NavBarData({super.key, required this.isSelected, required this.model});

  final bool isSelected;
  final NavBarModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          model.icon,
          color: isSelected ? Colors.black : Colors.black.withAlpha(154),
          size: 24,
        ),
        ClipRect(
          child: AnimatedAlign(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOutCubic,
            alignment: Alignment.centerLeft,
            widthFactor: isSelected ? 1.0 : 0.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Text(
                model.label,
                style: AppStyles.interMedium16.copyWith(color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
