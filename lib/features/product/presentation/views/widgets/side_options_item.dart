import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/app_styles.dart';
import 'package:test2/core/constant/assets.dart';

class SideOptionsItem extends StatelessWidget {
  const SideOptionsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100.w,
          height: 120.h,
          decoration: BoxDecoration(
            color: AppColors.primaryFontColor,
            borderRadius: .circular(15.r),
            boxShadow: const [BoxShadow(blurRadius: 10, spreadRadius: -5)],
          ),
        ),
        Positioned(
          top: 0,
          child: Container(
            width: 100.w,
            height: 61.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: .circular(15.r),
            ),
            child: Image.asset(Assets.images5eyar),
          ),
        ),
        Positioned(
          top: 70.h,
          left: 6.w,
          right: 6.w,
          child: Row(
            children: [
              Text(
                'Pickles',
                style: AppStyles.robtoMeduim12.copyWith(color: Colors.white),
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: .circle,
                  ),
                  child: const Icon(Icons.add_rounded, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
