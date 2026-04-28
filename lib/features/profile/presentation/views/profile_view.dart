import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/assets.dart';
import 'package:test2/features/profile/presentation/views/widgets/profile_bottom_row_buttons.dart';
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
            78.verticalSpace,
            const ProfilePicture(image: Assets.imagesAvatar),
            35.verticalSpace,
            const ProfileTextField(labelText: 'Name'),
            25.verticalSpace,
            const ProfileTextField(labelText: 'Email'),
            25.verticalSpace,
            const ProfileTextField(labelText: 'Delivery Address'),
            25.verticalSpace,
            const ProfileTextField(labelText: 'Password'),
            Divider(
              height: 72.h,
              color: AppColors.mediumGreyColor,
              endIndent: 25.w,
              indent: 25.w,
            ),
            const ProfileListTile(),
            const Spacer(),
            const ProfileBottomRowButtons(),
            110.verticalSpace,
          ],
        ),
      ),
    );
  }
}
