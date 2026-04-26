import 'package:flutter/material.dart';
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
        fixedSize: const .fromWidth(154),
      ),
      child: Text('Remove', style: AppStyles.interSemiBold18),
    );
  }
}
