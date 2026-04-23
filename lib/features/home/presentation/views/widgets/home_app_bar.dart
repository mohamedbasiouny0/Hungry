import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test2/features/home/presentation/views/widgets/custom_search_field.dart';
import 'package:test2/features/home/presentation/views/widgets/user_header.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 180,
      pinned: true,
      elevation: 8,
      scrolledUnderElevation: 8,
      surfaceTintColor: Colors.white,
      flexibleSpace: Padding(
        padding: EdgeInsets.only(top: 73, left: 20, right: 20),
        child: Column(children: [UserHeader(), Gap(16), CustomSearchField()]),
      ),
    );
  }
}
