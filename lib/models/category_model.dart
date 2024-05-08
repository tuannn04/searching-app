import 'package:flutter/material.dart';
import 'package:searching_app/models/search_item.dart';

class CategoryModel {
  String name;
  String icon;
  Color boxColor;
  String path;
  List<SearchItemModel> items;

  CategoryModel({
    required this.name,
    required this.icon,
    required this.boxColor,
    required this.path,
    required this.items
  });
}