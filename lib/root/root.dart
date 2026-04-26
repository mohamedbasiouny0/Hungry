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
    const NavBarModel(
      unselectedIcon: Icons.home_outlined,
      label: 'Home',
      selectedIcon: Icons.home,
    ),
    const NavBarModel(
      unselectedIcon: Icons.shopping_cart_outlined,
      label: 'Cart',
      selectedIcon: Icons.shopping_cart,
    ),
    const NavBarModel(
      unselectedIcon: Icons.receipt_long_outlined,
      label: 'Order history',
      selectedIcon: Icons.receipt_long,
    ),
    const NavBarModel(
      unselectedIcon: Icons.person_outline,
      label: 'Profile',
      selectedIcon: Icons.person,
    ),
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
