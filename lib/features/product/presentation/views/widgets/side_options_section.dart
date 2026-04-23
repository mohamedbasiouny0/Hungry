import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:test2/core/constant/app_styles.dart';
import 'package:test2/features/product/presentation/views/widgets/side_options_item.dart';

class SideOptionsSection extends StatelessWidget {
  const SideOptionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text('Side options', style: AppStyles.robtoSemiBold18),
        ),
        const Gap(9),
        SizedBox(
          height: 105.h,
          child: ListView.builder(
            clipBehavior: .none,
            scrollDirection: .horizontal,
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: SideOptionsItem(),
              );
            },
          ),
        ),
      ],
    );
  }
}
