import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test2/core/constant/app_styles.dart';
import 'package:test2/features/authentication/presentation/views/widgets/custom_elevated_button.dart';

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
                const Icon(Icons.edit_rounded, size: 30, fontWeight: .w600),
              ],
            ),
            onPressed: () {},
          ),
        ),
        const Gap(20),
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
                const Icon(Icons.logout_rounded, size: 30, fontWeight: .w600),
              ],
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
