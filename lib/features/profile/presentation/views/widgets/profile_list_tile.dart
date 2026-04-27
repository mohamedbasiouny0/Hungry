import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/app_styles.dart';
import 'package:test2/core/constant/assets.dart';
import 'package:test2/features/checkout/presentation/views/widgets/payment_options.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: .circular(20),
      ),
      child: ListTile(
        leading: SvgPicture.asset(
          Assets.imagesVisaSVG,
          height: 72,
          fit: .cover,
          colorFilter: const ColorFilter.mode(Colors.white, .srcIn),
        ),
        title: Text(
          'Debit card',
          style: AppStyles.robtoMeduim14.copyWith(color: Colors.white),
        ),
        subtitle: Text(
          '3566 **** **** 0505',
          style: AppStyles.robtoMeduim14.copyWith(color: Colors.white),
        ),
        trailing: Radio<PaymentMethod>(
          fillColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return Colors.white; // لما يكون متحدد
            }
            return Colors.grey; // لما يكون مش متحدد (inactive)
          }),
          value: PaymentMethod.visa,
          groupValue: PaymentMethod.visa,
        ),
        minTileHeight: 80,
      ),
    );
  }
}
