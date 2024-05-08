import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:searching_app/atoms/category_title.dart';
import 'package:searching_app/molecules/category_items.dart';

class CategoryParams {
  final CategoryTitleParams categoryTitleParams;
  final CategoryItemsParams categoryItemsParams;

  const CategoryParams({
    required this.categoryTitleParams,
    required this.categoryItemsParams,
  });
}

class Category extends StatelessWidget {
  final CategoryParams categoryParams;

  const Category({
    super.key,
    required this.categoryParams
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          CategoryTitle(
            categoryTitleParams: categoryParams.categoryTitleParams,
          ),
          CategoryItems(categoryItemsParams: categoryParams.categoryItemsParams)
      ],
    );
  }
}