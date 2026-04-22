import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test2/features/home/presentation/views/widgets/custom_search_field.dart';
import 'package:test2/features/home/presentation/views/widgets/home_app_bar.dart';

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
        ],
      ),
    );
  }
}
