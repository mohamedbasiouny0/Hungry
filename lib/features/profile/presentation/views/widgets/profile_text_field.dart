import 'package:flutter/material.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/app_styles.dart';

class ProfileTextField extends StatelessWidget {
  const ProfileTextField({super.key, required this.labelText, this.controller});
  final String labelText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(
        contentPadding: const .symmetric(horizontal: 24, vertical: 16),
        labelText: labelText,
        labelStyle: AppStyles.robtoMedium16.copyWith(
          color: AppColors.primaryColor,
        ),
        enabledBorder: _border(),
        focusedBorder: _border(),
      ),
    );
  }

  OutlineInputBorder _border() {
    return OutlineInputBorder(
      borderRadius: .circular(16),
      borderSide: const BorderSide(color: AppColors.primaryColor, width: 2),
    );
  }
}
