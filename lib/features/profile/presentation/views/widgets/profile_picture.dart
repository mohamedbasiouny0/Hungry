import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/core/constant/app_colors.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: .none,
      width: 120.w,
      height: 120.h,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryColor, width: 5.w),
        borderRadius: .circular(20.r),
        image: DecorationImage(image: AssetImage(image)),
      ),
    );
  }
}
