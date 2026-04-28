import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/core/constant/app_colors.dart';

class DialogCheckmark extends StatelessWidget {
  const DialogCheckmark({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.white,
      radius: 45.r,
      child: Icon(Icons.check_rounded, size: 60.sp, fontWeight: .w900),
    );
  }
}
