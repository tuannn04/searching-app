import 'package:flutter/material.dart';
import 'package:searching_app/atoms/category_item.dart';

class CategoryItemsParams {
  final List<CategoryItemParams> items;
  final int rowItemCount;

  const CategoryItemsParams({
    required this.items,
    this.rowItemCount = 3
  });
}

class CategoryItems extends StatelessWidget {
  final CategoryItemsParams categoryItemsParams;

  const CategoryItems({
    super.key,
    required this.categoryItemsParams,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: categoryItemsParams.items.length,
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: categoryItemsParams.rowItemCount,
        crossAxisSpacing: 20, 
        mainAxisSpacing: 10,
        childAspectRatio: 3/2
      ),
      itemBuilder: (_, int index) {
        return CategoryItem(categoryItemParams: categoryItemsParams.items[index]);
      }
    );
  }
}