import 'package:flutter/material.dart';
import 'package:test2/features/cart/presentation/views/widgets/cart_item.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: const CartItem());
  }
}
