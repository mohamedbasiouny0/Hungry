import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/app_styles.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.r),
      child: TextField(
        cursorColor: AppColors.primaryFontColor,
        cursorHeight: 20.h,
        style: AppStyles.robtoMedium18,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            CupertinoIcons.search,
            color: AppColors.softGreyColor,
            fontWeight: .bold,
          ),
          hintText: 'Search',
          hintStyle: AppStyles.robtoMedium18.copyWith(
            color: AppColors.softGreyColor,
          ),
          fillColor: Colors.white,
          filled: true,
          border: _border(),
          enabledBorder: _border(),
          focusedBorder: _border(),
        ),
      ),
    );
  }

  OutlineInputBorder _border() {
    return OutlineInputBorder(
      borderRadius: .all(Radius.circular(20.r)),
      borderSide: const BorderSide(width: 0, color: Colors.transparent),
    );
  }
}
