import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        padding: .symmetric(horizontal: 16.w, vertical: 16.h),
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
            16.verticalSpace,
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
