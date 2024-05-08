import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:searching_app/atoms/category_item.dart';
import 'package:searching_app/atoms/category_title.dart';
import 'package:searching_app/models/category_model.dart';
import 'package:searching_app/molecules/category_items.dart';
import 'package:searching_app/organisms/category.dart';
import 'package:searching_app/organisms/main_app_bar.dart';

class HomeTemplateParams {
  final String appBarTitle;
  final List<CategoryModel> categories;

  HomeTemplateParams({
    required this.appBarTitle,
    required this.categories
  });
}

class HomeTemplate extends StatelessWidget {
  final HomeTemplateParams homeTemplateParams;

  const HomeTemplate({
    super.key,
    required this.homeTemplateParams
  });

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    void openPage (String path) {
      context.go(path);
    }

    CategoryItemsParams getCategoryItemsParams(CategoryModel category) {
      List<CategoryItemParams> categoryItemParams = List<CategoryItemParams>.generate(
        category.items.length,
        (index) {
          return CategoryItemParams(
            label: category.items[index].name, 
            callback: () => {openPage(category.items[index].path)}
          );
        }
      );
      CategoryItemsParams result = CategoryItemsParams(items: categoryItemParams);
      return result;
    }

    List<CategoryParams> categoriesParams = [];

    for (var category in homeTemplateParams.categories) {
      CategoryTitleParams categoryTitleParams = CategoryTitleParams(categoryTitle: category.name);
      CategoryItemsParams categoryItemsParams = getCategoryItemsParams(category);
      CategoryParams categoryParams = CategoryParams(
        categoryTitleParams: categoryTitleParams, 
        categoryItemsParams: categoryItemsParams
      );
      categoriesParams.add(categoryParams);
    }

    return Scaffold(
      appBar: MainAppBar(
        themeData: themeData,
        appBarTitle: homeTemplateParams.appBarTitle
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List<Category>.generate(categoriesParams.length, (index) {
              return Category(categoryParams: categoriesParams[index]);
            }),
          )
        ],
      ),
    );
  }
}