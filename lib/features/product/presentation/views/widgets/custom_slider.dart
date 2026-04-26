import 'package:flutter/material.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/app_styles.dart';

class SpicySlider extends StatefulWidget {
  const SpicySlider({super.key});

  @override
  State<SpicySlider> createState() => _SpicySliderState();
}

class _SpicySliderState extends State<SpicySlider> {
  double value = 0.5;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text('Spicy', style: AppStyles.robtoMeduim14),
        Slider(
          activeColor: AppColors.primaryColor,
          value: value,
          onChanged: (index) => setState(() => value = index),
          inactiveColor: AppColors.extraSoftGreyColor,
          divisions: 4,
        ),
      ],
    );
  }
}
