import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/app_styles.dart';
import 'package:test2/core/constant/assets.dart';
import 'package:test2/features/checkout/presentation/views/widgets/payment_options.dart';
import 'package:test2/features/profile/presentation/views/widgets/profile_list_tile.dart';
import 'package:test2/features/profile/presentation/views/widgets/profile_picture.dart';
import 'package:test2/features/profile/presentation/views/widgets/profile_text_field.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Gap(78.h),
            const ProfilePicture(image: Assets.imagesAvatar),
            Gap(35.h),
            const ProfileTextField(labelText: 'Name'),
            Gap(25.h),
            const ProfileTextField(labelText: 'Email'),
            Gap(25.h),
            const ProfileTextField(labelText: 'Delivery Address'),
            Gap(25.h),
            const ProfileTextField(labelText: 'Password'),
            Divider(
              height: 72,
              color: AppColors.mediumGreyColor,
              endIndent: 25.w,
              indent: 25.w,
            ),
            const ProfileListTile(),
          ],
        ),
      ),
    );
  }
}
