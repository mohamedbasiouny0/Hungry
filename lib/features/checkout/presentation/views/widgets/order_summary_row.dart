import 'package:flutter/material.dart';
import 'package:test2/core/constant/app_styles.dart';

class OrderSummaryRow extends StatelessWidget {
  const OrderSummaryRow({
    super.key,
    required this.text,
    required this.rightText,
    required this.isUpToDivider,
    this.fontWeight,
    this.fontSize,
    this.color,
  });
  final String text;
  final String rightText;
  final bool isUpToDivider;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: isUpToDivider
              ? AppStyles.robtoRegular18
              : AppStyles.robtoSemiBold18.copyWith(
                  fontWeight: fontWeight,
                  fontSize: fontSize,
                  color: color,
                ),
        ),
        const Spacer(),
        Text(
          rightText,
          style: AppStyles.reemKufiBold18.copyWith(
            fontWeight: fontWeight,
            fontSize: fontSize,
            color: color,
          ),
        ),
      ],
    );
  }
}
