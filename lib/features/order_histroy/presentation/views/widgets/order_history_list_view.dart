import 'package:flutter/material.dart';
import 'package:test2/features/order_histroy/presentation/views/widgets/order_history_item.dart';

class OrderHistoryListView extends StatelessWidget {
  const OrderHistoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const .only(bottom: 93, top: 50),
      itemCount: 7,
      itemBuilder: (BuildContext context, int index) {
        return const OrderHistoryItem();
      },
    );
  }
}
