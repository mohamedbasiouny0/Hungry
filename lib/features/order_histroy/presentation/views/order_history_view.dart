import 'package:flutter/material.dart';
import 'package:test2/features/order_histroy/presentation/views/widgets/order_history_item.dart';

class OrderHistoryView extends StatelessWidget {
  const OrderHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: OrderHistoryItem());
  }
}
