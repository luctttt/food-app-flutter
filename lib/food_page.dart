import 'package:flutter/material.dart';
import 'package:food_app_navigation/models/category.dart';
import 'package:food_app_navigation/models/fake_data.dart';
import 'package:food_app_navigation/models/food.dart';

class FoodPage extends StatelessWidget {
  static const String routerName = '/FoodsPage';
  Category? category;

  FoodPage({this.category});

  @override
  Widget build(BuildContext context) {
    Map<String, Category>? arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, Category>?;
    category = arguments!['category'];
    List<Food> foods = FAKE_FOOD.where((food) => food.categoryId == category?.id).toList();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Food from ${category?.content}'),
      ),
      body: const Center(child: Text('This show Food')),
    );
  }
}
