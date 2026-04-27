import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test2/core/constant/app_styles.dart';
import 'package:test2/shared/widgets/custom_elevated_button.dart';
import 'package:test2/features/home/presentation/views/widgets/burger_widget.dart';

class OrderHistoryItem extends StatelessWidget {
  const OrderHistoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1,
      child: Padding(
        padding: const .symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisSize: .min,
          children: [
            Row(
              children: [
                const BurgerImageWidget(),
                const Spacer(),
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text('Hamburger', style: AppStyles.robtoSemiBold14),
                    const Text('Veggie Burger'),
                    Text('Qty: X3', style: AppStyles.robtoMeduim14),
                    Text('Price: 20\$', style: AppStyles.robtoMeduim14),
                  ],
                ),
              ],
            ),
            const Gap(16),
            Row(
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    text: 'Reorder',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
