import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/assets.dart';
import 'package:test2/features/profile/presentation/views/widgets/profile_picture.dart';

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
          ],
        ),
      ),
    );
  }
}
