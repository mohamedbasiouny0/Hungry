import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test2/features/home/presentation/views/widgets/custom_search_field.dart';
import 'package:test2/features/home/presentation/views/widgets/food_items_grid_view.dart';
import 'package:test2/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:test2/features/home/presentation/views/widgets/home_category_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeAppBar(),
          SliverGap(16),
          SliverToBoxAdapter(child: CustomSearchField()),
          SliverGap(40),
          SliverToBoxAdapter(child: HomeCategoryList()),
          SliverGap(40),
          SliverPadding(
            padding: .only(left: 20, right: 20),
            sliver: FoodItemsGridView(),
          ),
        ],
      ),
    );
  }
}
