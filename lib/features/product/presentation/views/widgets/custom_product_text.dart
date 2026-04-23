import 'package:flutter/cupertino.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/app_styles.dart';

class CustomProductText extends StatelessWidget {
  const CustomProductText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Row(
          crossAxisAlignment: .start,
          children: [
            Text('Customize ', style: AppStyles.robtoExtraBold16),
            Text(
              'Your Burger',
              style: AppStyles.robtoRegular14.copyWith(
                color: AppColors.primaryFontColor,
              ),
            ),
          ],
        ),
        const Text('to Your Tastes.\nUltimate  Experience'),
      ],
    );
  }
}
