import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test2/core/constant/app_colors.dart';

class PlusOrMinusElevatedButton extends StatelessWidget {
  const PlusOrMinusElevatedButton({super.key, required this.isPlus});
  final bool isPlus;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: .circular(10)),
        foregroundColor: Colors.white,
        backgroundColor: AppColors.primaryColor,
        fixedSize: const Size.square(20),
        padding: .zero,
      ),
      child: Icon(isPlus ? CupertinoIcons.add : CupertinoIcons.minus),
    );
  }
}
