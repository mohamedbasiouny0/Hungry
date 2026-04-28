import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:test2/core/constant/app_styles.dart';
import 'package:test2/shared/widgets/custom_elevated_button.dart';
import 'package:test2/features/checkout/presentation/views/widgets/dialog_checkmark.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 340.w,
        height: 400.h,
        decoration: BoxDecoration(
          borderRadius: .circular(20.r),
          color: Colors.white,
        ),
        child: Column(
          children: [
            26.verticalSpace,
            const DialogCheckmark(),
            26.verticalSpace,
            Text('Success!', style: AppStyles.popBold30),
            10.verticalSpace,
            Padding(
              padding: .symmetric(horizontal: 70.w),
              child: Text(
                'Your payment was successful!\nA receipt for this purchase has been sent to your email.',
                style: AppStyles.robtoRegular14,
                textAlign: .center,
              ),
            ),
            52.verticalSpace,
            CustomElevatedButton(
              text: 'Go back',
              onPressed: () => context.pop(),
            ),
          ],
        ),
      ),
    );
  }
}
