import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(CupertinoIcons.back),
        ),
      ),
      body: Column(
        crossAxisAlignment: .start,
        children: [
          const ProductHeader(),
          const Gap(50),
          const ToppingsSection(),
          const Gap(50),
          const SideOptionsSection(),
          const Gap(65),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomButtomRow(
              text: 'Add to card',
              onPressed: () => context.push(RoutingHelper.cart),
            ),
          ),
        ],
      ),
    );
  }
}
