import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/features/checkout/presentation/views/widgets/custom_dialog.dart';
import 'package:test2/features/checkout/presentation/views/widgets/order_summary_section.dart';
import 'package:test2/features/checkout/presentation/views/widgets/payemnt_methods_section.dart';
import 'package:test2/features/product/presentation/views/widgets/custom_buttom_row.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            const OrderSummarySection(),
            40.verticalSpace,
            const PayemntMethodsSection(),
            const Spacer(),
            CustomRow(
              text: 'Pay now',
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const CustomDialog(),
                );
              },
            ),
            36.verticalSpace,
          ],
        ),
      ),
    );
  }
}
