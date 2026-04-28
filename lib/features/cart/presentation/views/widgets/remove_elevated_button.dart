import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/app_styles.dart';

class RemoveElevatedButton extends StatelessWidget {
  const RemoveElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        fixedSize: .fromWidth(154.w),
      ),
      child: Text('Remove', style: AppStyles.interSemiBold18),
    );
  }
}
