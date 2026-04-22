import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/app_styles.dart';

class HomeCategoryItem extends StatelessWidget {
  const HomeCategoryItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20).w,
        color: AppColors.primaryColor,
      ),
      child: Text('All', style: AppStyles.interMedium16),
    );
  }
}
