import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/app_styles.dart';
import 'package:test2/core/constant/assets.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: .start,
      mainAxisAlignment: .spaceBetween,
      children: [
        Column(
          crossAxisAlignment: .start,
          children: [
            SvgPicture.asset(
              Assets.imagesHungryLogo,
              width: 240.w,
              colorFilter: const ColorFilter.mode(
                AppColors.primaryColor,
                .srcIn,
              ),
            ),
            Text('Hello, Mohamed Basiouny', style: AppStyles.popMedium18),
          ],
        ),
        ClipRRect(
          borderRadius: .circular(20.r),
          child: Image.asset(Assets.imagesAvatar, height: 60.h, width: 60.w),
        ),
      ],
    );
  }
}
