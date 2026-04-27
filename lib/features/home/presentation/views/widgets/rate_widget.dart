import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/app_styles.dart';

class RateWidget extends StatelessWidget {
  const RateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: .min,
      children: [
        const Icon(CupertinoIcons.star_fill, color: AppColors.starRateColor),
        5.horizontalSpace,
        Text('4.9', style: AppStyles.robtoMedium16),
      ],
    );
  }
}
