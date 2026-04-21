import 'package:flutter/material.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 65,
        margin: const .only(right: 24, left: 24, bottom: 30),
        decoration: BoxDecoration(
          color: Colors.black.withAlpha(50),
          border: .all(width: 1.5, color: Colors.black.withAlpha(26)),
          borderRadius: const .all(.circular(99)),
        ),
      ),
    );
  }
}
