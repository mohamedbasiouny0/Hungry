import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:test2/core/routes/routing_helper.dart';
import 'package:test2/features/home/presentation/views/widgets/food_item.dart';

class FoodItemsGridView extends StatelessWidget {
  const FoodItemsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 22.w,
        mainAxisSpacing: 22.h,
        childAspectRatio: 185.w / 245.h,
      ),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => context.push(RoutingHelper.product),
          child: const FoodItem(),
        );
      },
    );
  }
}
