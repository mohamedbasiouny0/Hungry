import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
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
            const Column(
              crossAxisAlignment: .start,
              children: [CustomProductText(), Gap(20), SpicySlider()],
            ),
            const Gap(20),
          ],
        ),
      ],
    );
  }
}
