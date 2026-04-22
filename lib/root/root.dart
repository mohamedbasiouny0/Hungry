import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test2/core/models/nav_bar_model.dart';
import 'package:test2/features/cart/presentation/views/cart_view.dart';
import 'package:test2/features/home/presentation/views/home_view.dart';
import 'package:test2/features/order_histroy/presentation/views/order_history_view.dart';
import 'package:test2/features/profile/presentation/views/profile_view.dart';
import 'package:test2/root/widgets/nav_bar_data.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int currentIndex = 0;

  List<Widget> content = [
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          content[currentIndex],
          Positioned(
            bottom: 25,
            left: 20,
            right: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(
                  height: 70,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.black.withAlpha(21),
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      color: Colors.black.withAlpha(52),
                      width: 1.2,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(icons.length, (index) {
                      final isSelected = currentIndex == index;

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        child: AnimatedContainer(
                          height: 50,
                          duration: const Duration(milliseconds: 250),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? Colors.black.withAlpha(39)
                                : Colors.transparent,
                            borderRadius: .circular(80),
                          ),
                          child: NavBarData(
                            isSelected: isSelected,
                            model: icons[index],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
