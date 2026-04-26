import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
        title: const CustomRow(text: 'Add to card'),
        toolbarHeight: 100,
        backgroundColor: Colors.white,
      ),
      body: const SingleChildScrollView(
        child: Column(
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
      ),
    );
  }
}
