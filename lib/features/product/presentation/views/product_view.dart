import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:test2/core/routes/routing_helper.dart';
import 'package:test2/features/product/presentation/views/widgets/custom_buttom_row.dart';
import 'package:test2/features/product/presentation/views/widgets/product_header.dart';
import 'package:test2/features/product/presentation/views/widgets/side_options_section.dart';
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
        title: CustomRow(
          text: 'Add to cart',
          onPressed: () => context.push(RoutingHelper.cart),
        ),
        toolbarHeight: 100.h,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            const ProductHeader(),
            50.verticalSpace,
            const ToppingsSection(),
            50.verticalSpace,
            const SideOptionsSection(),
            50.verticalSpace,
          ],
        ),
      ),
    );
  }
}
