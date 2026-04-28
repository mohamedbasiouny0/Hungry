import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/core/constant/app_styles.dart';
import 'package:test2/shared/widgets/custom_elevated_button.dart';

class ProfileBottomRowButtons extends StatelessWidget {
  const ProfileBottomRowButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomElevatedButton(
            child: Row(
              children: [
                Text(
                  'Edit profile',
                  style: AppStyles.robtoMedium18.copyWith(color: Colors.white),
                ),
                const Spacer(),
                Icon(Icons.edit_rounded, size: 30.sp, fontWeight: .w600),
              ],
            ),
            onPressed: () {},
          ),
        ),
        20.horizontalSpace,
        Expanded(
          child: CustomElevatedButton(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            child: Row(
              children: [
                Text(
                  'Logout',
                  style: AppStyles.robtoMedium18.copyWith(color: Colors.white),
                ),
                const Spacer(),
                Icon(Icons.logout_rounded, size: 30.sp, fontWeight: .w600),
              ],
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
