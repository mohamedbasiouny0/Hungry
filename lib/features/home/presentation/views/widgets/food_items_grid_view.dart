import 'package:flutter/material.dart';
import 'package:test2/features/home/presentation/views/widgets/food_item.dart';

class FoodItemsGridView extends StatelessWidget {
  const FoodItemsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 22,
        mainAxisSpacing: 22,
        childAspectRatio: 185 / 245,
      ),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return const FoodItem();
      },
    );
  }
}
