import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/core/constant/app_colors.dart';

class PlusOrMinusElevatedButton extends StatelessWidget {
  const PlusOrMinusElevatedButton({
    super.key,
    required this.isPlus,
    required this.onPressed,
  });
  final bool isPlus;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: .circular(10.r)),
        foregroundColor: Colors.white,
        backgroundColor: AppColors.primaryColor,
        fixedSize: Size.square(20.r),
        padding: .zero,
      ),
      child: Icon(isPlus ? CupertinoIcons.add : CupertinoIcons.minus),
    );
  }
}
