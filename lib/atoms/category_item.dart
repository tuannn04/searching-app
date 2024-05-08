import 'package:flutter/material.dart';

class CategoryItemParams {
  final String label;
  final Function callback;

  const CategoryItemParams({
    required this.label,
    required this.callback
  });
}

class CategoryItem extends StatelessWidget {
  final CategoryItemParams categoryItemParams;

  const CategoryItem({
    super.key,
    required this.categoryItemParams
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 164, 165, 173).withOpacity(0.3),
        borderRadius: BorderRadius.circular(5),
      ),
      child: GridTile(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(shape: BoxShape.rectangle)
            ),
            Text(
              categoryItemParams.label,
            )
          ],
        )
      ),
    );
  }
}