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
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
      margin: isFirst ? .symmetric(horizontal: 8.w) : .only(right: 8.w),
      height: 50.h,
      padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 16.h),
      decoration: BoxDecoration(
        borderRadius: .circular(20.r),
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
