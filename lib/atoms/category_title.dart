import 'package:flutter/material.dart';

class CategoryTitleParams {
  final String categoryTitle;

  const CategoryTitleParams({
    required this.categoryTitle
  });
}

class CategoryTitle extends StatelessWidget {
  final CategoryTitleParams categoryTitleParams;
  
  const CategoryTitle({
    super.key, 
    required this.categoryTitleParams
  });


  @override
  Widget build(BuildContext context) {
    // TODO: Theme configuration must be used
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        categoryTitleParams.categoryTitle,
        textAlign: TextAlign.left
      ),
    );
  }
}