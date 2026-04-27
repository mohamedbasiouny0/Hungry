import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test2/features/checkout/presentation/views/widgets/order_summary_section.dart';
import 'package:test2/features/checkout/presentation/views/widgets/payemnt_methods_section.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: .start,
            children: [OrderSummarySection(), Gap(40), PayemntMethodsSection()],
          ),
        ),
      ),
    );
  }
}
