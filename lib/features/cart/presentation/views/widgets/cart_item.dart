import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test2/core/constant/app_styles.dart';
import 'package:test2/features/cart/presentation/views/widgets/plus_or_minus_elevated_button.dart';
import 'package:test2/features/cart/presentation/views/widgets/remove_elevated_button.dart';
import 'package:test2/features/home/presentation/views/widgets/burger_widget.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Column(
              mainAxisSize: .min,
              children: [
                const BurgerImageWidget(),
                Text('Hamburger', style: AppStyles.robtoSemiBold16),
                Text('Veggie Burger', style: AppStyles.robtoRegular16),
              ],
            ),
            const Spacer(),
            const Column(
              mainAxisSize: .min,
              children: [
                Row(
                  mainAxisSize: .min,
                  children: [
                    PlusOrMinusElevatedButton(isPlus: true),
                    Gap(25),
                    PlusOrMinusElevatedButton(isPlus: false),
                  ],
                ),
                Gap(40),
                RemoveElevatedButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
