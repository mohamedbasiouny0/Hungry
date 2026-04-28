import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/features/order_histroy/presentation/views/widgets/order_history_item.dart';

class OrderHistoryListView extends StatelessWidget {
  const OrderHistoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: .only(bottom: 93.h, top: 50.h),
      itemCount: 7,
      itemBuilder: (BuildContext context, int index) {
        return const OrderHistoryItem();
      },
    );
  }
}
