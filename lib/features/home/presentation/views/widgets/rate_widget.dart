import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/app_styles.dart';

class RateWidget extends StatelessWidget {
  const RateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: .min,
      children: [
        const Gap(10),
        const Icon(CupertinoIcons.star_fill, color: AppColors.starRateColor),
        const Gap(5),
        Text('4.9', style: AppStyles.robtoMedium16),
      ],
    );
  }
}
