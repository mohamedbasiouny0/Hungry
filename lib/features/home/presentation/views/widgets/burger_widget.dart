import 'package:flutter/cupertino.dart';
import 'package:test2/core/constant/assets.dart';

class BurgerImageWidget extends StatelessWidget {
  const BurgerImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(Assets.imagesEllipse),
        Image.asset(Assets.imagesTestImage3, height: 120, width: 120),
      ],
    );
  }
}
