import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test2/core/constant/app_colors.dart';

class DialogCheckmark extends StatelessWidget {
  const DialogCheckmark({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.white,
      radius: 45,
      child: Icon(Icons.check_rounded, size: 60, fontWeight: .w900),
    );
  }
}
