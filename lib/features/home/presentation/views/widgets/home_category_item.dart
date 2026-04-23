import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/app_styles.dart';

class HomeCategoryItem extends StatelessWidget {
  const HomeCategoryItem({
    super.key,
    required this.isFirst,
    required this.selected,
    required this.text,
  });
  final String text;
  final bool isFirst;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isFirst ? const .symmetric(horizontal: 8) : const .only(right: 8),
      height: 50.h,
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20).w,
        color: selected
            ? AppColors.primaryColor
            : AppColors.unSelectedHomeCategoryItemColor,
      ),
      child: Text(
        text,
        style: AppStyles.interMedium16.copyWith(
          color: selected ? Colors.white : AppColors.hardGreyColor,
        ),
      ),
    );
  }
}
