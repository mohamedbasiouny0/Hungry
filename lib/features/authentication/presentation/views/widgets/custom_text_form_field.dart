import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/core/constant/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;

  final Widget? suffixIcon;
  final String? Function(String?) validator;
  final bool visiable;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    required this.validator,
    required this.visiable,
  });

  OutlineInputBorder _errorBorder() {
    return OutlineInputBorder(
      // ignore: prefer_const_constructors
      borderRadius: .all(.circular(12.r)),
      borderSide: const BorderSide(color: Colors.red),
    );
  }

  OutlineInputBorder _border() {
    return OutlineInputBorder(
      // ignore: prefer_const_constructors
      borderRadius: .all(.circular(12.r)),
      borderSide: const BorderSide(color: Colors.transparent),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: visiable,
      cursorColor: AppColors.primaryColor,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: Colors.white,
        enabledBorder: _border(),
        focusedBorder: _border(),
        errorBorder: _errorBorder(),
        focusedErrorBorder: _errorBorder(),
      ),
    );
  }
}
