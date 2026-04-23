import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/app_styles.dart';
import 'package:test2/core/constant/assets.dart';
import 'package:test2/features/product/presentation/views/widgets/product_header.dart';
import 'package:test2/features/product/presentation/views/widgets/side_options_section.dart';
import 'package:test2/features/product/presentation/views/widgets/toppings_item.dart';
import 'package:test2/features/product/presentation/views/widgets/toppings_section.dart';

class Productview extends StatefulWidget {
  const Productview({super.key});

  @override
  State<Productview> createState() => _ProductviewState();
}

class _ProductviewState extends State<Productview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(CupertinoIcons.back),
        ),
      ),
      body: const Column(
        crossAxisAlignment: .start,
        children: [
          ProductHeader(),
          Gap(50),
          ToppingsSection(),
          Gap(50),
          SideOptionsSection(),
          Gap(65),
        ],
      ),
    );
  }
}
