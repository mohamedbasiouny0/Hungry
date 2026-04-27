import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/features/home/presentation/views/widgets/custom_search_field.dart';
import 'package:test2/features/home/presentation/views/widgets/user_header.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 180.h,
      pinned: true,
      elevation: 8,
      scrolledUnderElevation: 8,
      surfaceTintColor: Colors.white,
      flexibleSpace: Padding(
        padding: EdgeInsets.only(top: 73.h, left: 20.w, right: 20.w),
        child: Column(
          children: [
            const UserHeader(),
            16.verticalSpace,
            const CustomSearchField(),
          ],
        ),
      ),
    );
  }
}
