import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:test2/features/home/presentation/views/widgets/food_items_grid_view.dart';
import 'package:test2/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:test2/features/home/presentation/views/widgets/home_category_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const HomeAppBar(),
          SliverGap(25.h),
          const SliverToBoxAdapter(child: HomeCategoryList()),
          SliverGap(16.h),
          SliverPadding(
            padding: .only(left: 20.w, right: 20.w, bottom: 93.h),
            sliver: const FoodItemsGridView(),
          ),
        ],
      ),
    );
  }
}
