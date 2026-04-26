import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test2/core/constant/app_styles.dart';
import 'package:test2/features/home/presentation/views/widgets/burger_widget.dart';
import 'package:test2/features/home/presentation/views/widgets/rate_widget.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: .start,
        children: [
          const Center(child: BurgerImageWidget()),
          const Gap(10),
          Padding(
            padding: const .only(left: 10),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text('Cheeseburger', style: AppStyles.robtoSemiBold16),
                Text('Wendy\'s Burger', style: AppStyles.robtoRegular16),
                const Gap(16),
                const RateWidget(),
              ],
            ),
          ),
          const Gap(17),
        ],
      ),
    );
  }
}
