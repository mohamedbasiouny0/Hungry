import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test2/core/constant/app_styles.dart';
import 'package:test2/features/checkout/presentation/views/widgets/payment_options.dart';

class PayemntMethodsSection extends StatelessWidget {
  const PayemntMethodsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text('Payment methods', style: AppStyles.popSemiBold20),
        const Gap(20),
        const PaymentOptions(),
      ],
    );
  }
}
