import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/app_styles.dart';
import 'package:test2/features/checkout/presentation/views/widgets/order_summary_row.dart';

class OrderSummarySection extends StatelessWidget {
  const OrderSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text('Order summary', style: AppStyles.popSemiBold20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            children: [
              const OrderSummaryRow(
                text: 'Order',
                rightText: '\$16.48',
                isUpToDivider: true,
              ),
              const Gap(10),
              const OrderSummaryRow(
                text: 'Taxes',
                rightText: '\$0.3',
                isUpToDivider: true,
              ),
              const Gap(10),
              const OrderSummaryRow(
                text: 'Delivery fees',
                rightText: '\$1.5',
                isUpToDivider: true,
              ),
              const Gap(10),
              const Divider(height: 0),
              const Gap(20),
              const OrderSummaryRow(
                text: 'Total:',
                rightText: '\$18.19',
                isUpToDivider: false,
                fontWeight: .w600,
                color: AppColors.primaryFontColor,
              ),
              const Gap(20),
              OrderSummaryRow(
                text: 'Estimated delivery time:',
                rightText: '15 - 30 mins',
                isUpToDivider: false,
                fontWeight: .w600,
                fontSize: 14.sp,
                color: AppColors.primaryFontColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
