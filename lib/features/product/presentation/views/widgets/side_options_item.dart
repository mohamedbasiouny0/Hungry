import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/assets.dart';

class SideOptionsItem extends StatelessWidget {
  const SideOptionsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 84.w,
          height: 99.h,
          decoration: BoxDecoration(
            color: AppColors.primaryFontColor,
            borderRadius: .circular(15),
            boxShadow: const [BoxShadow(blurRadius: 10, spreadRadius: -5)],
          ),
        ),
        Positioned(
          top: 0,
          child: Container(
            width: 84.w,
            height: 61.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: .circular(15),
            ),
            child: Image.asset(Assets.images5eyar),
          ),
        ),
        // Positioned(
        //   bottom: 0,
        //   left: 6,
        //   child: Row(
        //     children: [
        //       Text(
        //         'Pickles',
        //         style: AppStyles.robtoMeduim12.copyWith(color: Colors.white),
        //       ),
        //       IconButton(
        //         onPressed: () {},
        //         padding: .zero,
        //         style: IconButton.styleFrom(padding: .zero),
        //         icon: Container(
        //           decoration: const BoxDecoration(
        //             color: Colors.red,
        //             shape: .circle,
        //           ),
        //           child: const Icon(Icons.add_rounded, color: Colors.white),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
