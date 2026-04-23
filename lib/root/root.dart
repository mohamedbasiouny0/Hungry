import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test2/core/models/nav_bar_model.dart';
import 'package:test2/features/cart/presentation/views/cart_view.dart';
import 'package:test2/features/home/presentation/views/home_view.dart';
import 'package:test2/features/order_histroy/presentation/views/order_history_view.dart';
import 'package:test2/features/profile/presentation/views/profile_view.dart';
import 'package:test2/root/widgets/nav_bar_item.dart';
import 'package:test2/root/widgets/nav_bar_outer_shape.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  late PageController controller;
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeView(),
    const CartView(),
    const OrderHistoryView(),
    const ProfileView(),
  ];

  final List<NavBarModel> icons = [
    const NavBarModel(icon: CupertinoIcons.home, label: 'Home'),
    const NavBarModel(icon: CupertinoIcons.cart, label: 'Cart'),
    const NavBarModel(icon: Icons.receipt_long, label: 'Order history'),
    const NavBarModel(icon: CupertinoIcons.profile_circled, label: 'Profile'),
  ];
  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            physics: const NeverScrollableScrollPhysics(),
            children: screens,
          ),
          Positioned(
            bottom: 25,
            left: 20,
            right: 20,
            child: NavBarOuterShape(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(icons.length, (index) {
                  final isSelected = currentIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                      controller.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: NavBarItem(
                      isSelected: isSelected,
                      model: icons[index],
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
