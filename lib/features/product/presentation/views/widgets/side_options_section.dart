import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          padding: EdgeInsets.only(left: 20.w),
          child: Text('Side options', style: AppStyles.robtoSemiBold18),
        ),
        9.verticalSpace,
        SizedBox(
          height: 105.h,
          child: ListView.builder(
            clipBehavior: .none,
            scrollDirection: .horizontal,
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: const SideOptionsItem(),
              );
            },
          ),
        ),
      ],
    );
  }
}
