import 'package:flutter/material.dart';
import 'package:test2/features/home/presentation/views/widgets/user_header.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 100,
      pinned: true,
      flexibleSpace: Padding(
        padding: EdgeInsets.only(top: 73, left: 20, right: 20),
        child: UserHeader(),
      ),
    );
  }
}
