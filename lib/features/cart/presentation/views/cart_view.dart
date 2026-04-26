import 'package:flutter/material.dart';
import 'package:test2/features/cart/presentation/views/widgets/cart_item.dart';
import 'package:test2/features/product/presentation/views/widgets/custom_buttom_row.dart';

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
      appBar: AppBar(
        toolbarHeight: 100,
        title: Container(
          padding: const .symmetric(horizontal: 8),
          child: CustomButtomRow(text: 'Checkout', onPressed: () {}),
        ),
        elevation: 0,
        scrolledUnderElevation: 4,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const .only(bottom: 93),
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
          ),
        ],
      ),
    );
  }
}
