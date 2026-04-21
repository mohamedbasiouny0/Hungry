import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/app_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.backgroundColor,
    this.foregroundColor,
    required this.text,
    this.side,
    this.onPressed,
  });
  final Color? backgroundColor;
  final Color? foregroundColor;
  final String text;
  final BorderSide? side;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size.fromHeight(60.h),
        shape: RoundedRectangleBorder(
          borderRadius: .circular(20),
          side: side ?? const BorderSide(width: 0),
        ),
        backgroundColor: backgroundColor ?? AppColors.primaryColor,
        foregroundColor: foregroundColor ?? Colors.white,
      ),
      child: Text(
        text,
        style: AppStyles.interSemiBold18.copyWith(color: foregroundColor),
      ),
    );
  }
}
