import 'package:flutter/material.dart';
import 'package:searching_app/models/category_model.dart';
import 'package:searching_app/models/search_item.dart';
import 'package:searching_app/templates/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageData homepageData = HomePageData();

    return HomeTemplate(
      homeTemplateParams: HomeTemplateParams(
        appBarTitle: "Tra Cứu",
        categories: homepageData.getCategories()
      ),
    );
  }
}

class HomePageData {
  HomePageData();

  List<CategoryModel> getCategories() {
    List<CategoryModel> result = [];

    List<SearchItemModel> carItems = [];
    carItems.add(SearchItemModel(name: "Phạt Nguội", icon: "", boxColor: Colors.red, path: "/car/phat_nguoi"));
    carItems.add(SearchItemModel(name: "Đăng Kiểm", icon: "", boxColor: Colors.red, path: "/car/dang_kiem"));
    CategoryModel careCategory = CategoryModel(name: "Ô Tô", icon: "", boxColor: Colors.black, path: "/car", items: carItems);
    result.add(careCategory);

    List<SearchItemModel> motorbikeItems = [];
    motorbikeItems.add(SearchItemModel(name: "Biển số", icon: "", boxColor: Colors.red, path: "/motorbike/bien_so"));
    CategoryModel motorbikeCategory = CategoryModel(name: "Xe Máy", icon: "", boxColor: Colors.black, path: "/motorbike", items: motorbikeItems);
    result.add(motorbikeCategory);

    return result;
  }
}