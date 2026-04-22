import 'package:flutter/material.dart';
import 'package:test2/features/home/presentation/views/widgets/home_category_item.dart';

class HomeCategoryList extends StatefulWidget {
  const HomeCategoryList({super.key});

  @override
  State<HomeCategoryList> createState() => _HomeCategoryListState();
}

class _HomeCategoryListState extends State<HomeCategoryList> {
  int currentIndex = 0;
  final List<String> categoryTextList = ['All', 'Combos', 'Slider', 'Classic'];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: categoryTextList.length,
        scrollDirection: .horizontal,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () => setState(() => currentIndex = index),
          child: HomeCategoryItem(
            isFirst: index == 0,
            selected: currentIndex == index,
            text: categoryTextList[index],
          ),
        ),
      ),
    );
  }
}
