import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/app_styles.dart';
import 'package:test2/core/constant/assets.dart';

class PaymentOptions extends StatefulWidget {
  const PaymentOptions({super.key});

  @override
  State<PaymentOptions> createState() => _PaymentOptionsState();
}

enum PaymentMethod { cash, visa }

class _PaymentOptionsState extends State<PaymentOptions> {
  PaymentMethod paymentMethod = PaymentMethod.cash;
  bool selectedCash = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            color: paymentMethod == PaymentMethod.cash
                ? AppColors.primaryFontColor
                : AppColors.unSelectedHomeCategoryItemColor,
            borderRadius: .circular(20.r),
          ),
          child: ListTile(
            title: Text(
              'Cash on Delivery',
              style: AppStyles.robtoMedium20.copyWith(
                color: paymentMethod == PaymentMethod.cash
                    ? Colors.white
                    : AppColors.softGreyColor,
              ),
            ),
            minTileHeight: 80.h,
            leading: CircleAvatar(
              backgroundColor: const Color(0xff2B5901),
              radius: 36.r,
              child: SvgPicture.asset(
                Assets.imagesDollarSVG,
                height: 72.h,
                colorFilter: const ColorFilter.mode(Colors.white, .srcIn),
              ),
            ),
            trailing: Radio<PaymentMethod>.adaptive(
              value: PaymentMethod.cash,
              activeColor: Colors.white,
              groupValue: paymentMethod,
              onChanged: (value) {
                setState(() => paymentMethod = value as PaymentMethod);
                // selected = !selected;
              },
            ),
            minLeadingWidth: 72.w,
          ),
        ),
        27.verticalSpace,
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            color: paymentMethod == PaymentMethod.visa
                ? AppColors.primaryFontColor
                : AppColors.unSelectedHomeCategoryItemColor,
            borderRadius: .circular(20.r),
          ),
          child: ListTile(
            leading: SvgPicture.asset(
              Assets.imagesVisaSVG,
              height: 72.h,
              fit: .cover,
            ),
            title: Text(
              'Debit card',
              style: AppStyles.robtoMeduim14.copyWith(
                color: paymentMethod == PaymentMethod.visa
                    ? Colors.white
                    : AppColors.softGreyColor,
              ),
            ),
            subtitle: Text(
              '3566 **** **** 0505',
              style: AppStyles.robtoMeduim14.copyWith(
                color: paymentMethod == PaymentMethod.visa
                    ? Colors.white
                    : AppColors.softGreyColor,
              ),
            ),
            trailing: Radio<PaymentMethod>(
              activeColor: Colors.white,
              value: PaymentMethod.visa,
              groupValue: paymentMethod,
              onChanged: (value) =>
                  setState(() => paymentMethod = value as PaymentMethod),
            ),
            minTileHeight: 80.h,
          ),
        ),
      ],
    );
  }
}
