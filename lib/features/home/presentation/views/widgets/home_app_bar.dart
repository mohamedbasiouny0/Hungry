import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/app_styles.dart';
import 'package:test2/core/constant/assets.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 100,
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 73, left: 20, right: 20),
        child: Row(
          crossAxisAlignment: .start,
          mainAxisAlignment: .spaceBetween,
          children: [
            Column(
              crossAxisAlignment: .start,
              children: [
                SvgPicture.asset(
                  Assets.imagesHungryLogo,
                  width: 240,
                  colorFilter: const ColorFilter.mode(
                    AppColors.primaryColor,
                    .srcIn,
                  ),
                ),
                Text('Hello, Mohamed Basiouny', style: AppStyles.popMedium18),
              ],
            ),
            ClipRRect(
              borderRadius: .circular(20),
              child: Image.asset(Assets.imagesAvatar, height: 60, width: 60),
            ),
          ],
        ),
      ),
    );
  }
}
