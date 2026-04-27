import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/core/constant/assets.dart';
import 'package:test2/features/product/presentation/views/widgets/custom_product_text.dart';
import 'package:test2/features/product/presentation/views/widgets/custom_slider.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(Assets.imagesPngwing12, height: 297),
            const Spacer(),
            Column(
              crossAxisAlignment: .start,
              children: [
                const CustomProductText(),
                20.verticalSpace,
                const SpicySlider(),
              ],
            ),
            20.horizontalSpace,
          ],
        ),
      ],
    );
  }
}
