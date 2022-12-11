import 'package:flutter/material.dart';
import 'package:food_app_navigation/category_item.dart';
import 'package:food_app_navigation/models/fake_data.dart';

class CategoresPage extends StatelessWidget {
  static const String routerName = '/FoodsPage';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView(
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          // xac dinh theme cua gridview
          maxCrossAxisExtent: 300, // chieu rong max = 300
          childAspectRatio: 3 / 2, // ty le chieu rong/chieu cao cua 1 o
          crossAxisSpacing: 10, // do rong luoi theo chieu doc , ngang
          mainAxisSpacing: 10),
      children: FAKE_CATEGORYS.map((e) => CategoryItem(e)).toList(),
    );
  }
}
