import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test2/features/product/presentation/views/widgets/product_header.dart';

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
      body: const ProductHeader(),
    );
  }
}
