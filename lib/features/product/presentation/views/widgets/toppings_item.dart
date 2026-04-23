import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/core/constant/app_colors.dart';

class ToppingsItem extends StatelessWidget {
  const ToppingsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: .topCenter,
      children: [
        Container(
          width: 84.w,
          height: 99.h,
          decoration: BoxDecoration(
            color: AppColors.primaryFontColor,
            borderRadius: .circular(15),
            boxShadow: const [BoxShadow(blurRadius: 10, spreadRadius: -5)],
          ),
        ),
        Container(
          width: 84.w,
          height: 61.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: .circular(15),
          ),
        ),
      ],
    );
  }
}
