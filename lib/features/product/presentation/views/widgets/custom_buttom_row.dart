import 'package:flutter/cupertino.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/app_styles.dart';
import 'package:test2/features/authentication/presentation/views/widgets/custom_elevated_button.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: .start,
          children: [
            Text('Total', style: AppStyles.robtoSemiBold18),
            Row(
              children: [
                Text(
                  '\$',
                  style: AppStyles.reemKufiRegular32.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                Text('18.19', style: AppStyles.reemKufiRegular32),
              ],
            ),
          ],
        ),
        const Spacer(),
        CustomElevatedButton(text: text, onPressed: onPressed),
      ],
    );
  }
}
