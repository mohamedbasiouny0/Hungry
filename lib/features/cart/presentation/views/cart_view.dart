import 'package:flutter/material.dart';
import 'package:test2/features/cart/presentation/views/widgets/cart_item.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  late List<int> itemsNumber;

  @override
  void initState() {
    itemsNumber = List.filled(5, 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return CartItem(
            itemNumber: itemsNumber[index],
            plusOnPressed: () {
              setState(() {
                itemsNumber[index]++;
              });
            },
            minusOnPressed: () {
              setState(() {
                if (itemsNumber[index] > 0) {
                  itemsNumber[index]--;
                }
              });
            },
          );
        },
      ),
    );
  }
}
