import 'dart:ui';

import 'package:flutter/material.dart';

class NavBarOuterShape extends StatelessWidget {
  const NavBarOuterShape({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.black.withAlpha(21),
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.black.withAlpha(52), width: 1.2),
          ),
          child: child,
        ),
      ),
    );
  }
}
