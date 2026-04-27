import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/app_styles.dart';

class PaymentCheckboxSection extends StatefulWidget {
  const PaymentCheckboxSection({super.key});

  @override
  State<PaymentCheckboxSection> createState() => _PaymentCheckboxSectionState();
}

class _PaymentCheckboxSectionState extends State<PaymentCheckboxSection> {
  bool? selected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: selected,
          onChanged: (value) => setState(() => selected = value),
          activeColor: Colors.redAccent,
        ),
        const Gap(9),
        Text(
          'Save card details for future payments',
          style: AppStyles.robtoRegular16.copyWith(
            color: AppColors.softGreyColor,
          ),
        ),
      ],
    );
  }
}
