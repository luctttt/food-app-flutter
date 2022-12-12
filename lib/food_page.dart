import 'package:flutter/material.dart';
import 'package:food_app_navigation/models/category.dart';
import 'package:food_app_navigation/models/fake_data.dart';
import 'package:food_app_navigation/models/food.dart';

import 'detail_food_page.dart';

class FoodPage extends StatelessWidget {
  static const String routerName = '/FoodsPage';
  Category? category;

  FoodPage({this.category});

  @override
  Widget build(BuildContext context) {
    Map<String, Category>? arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, Category>?;
    category = arguments!['category'];
    List<Food> foods =
        FAKE_FOODS.where((food) => food.categoryId == category?.id).toList();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Food from ${category?.content}'),
      ),
      body: Center(
          child: foods.isNotEmpty
              ? ListView.builder(
                  itemCount: foods.length,
                  itemBuilder: (context, index) {
                    Food food = foods[index];
                    return InkWell(
                      // cung cap cac phan hoi khi nguoi dung nhan vao nut
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailFoodPage(
                                  food: food,
                                )));
                      },
                      child: Stack(
                          // last in first out , view de len nhau

                          children: [
                            Container(
                              padding: const EdgeInsets.all(20),
                              child: ClipRRect(
                                  // cat con cua no thanh hinh chu nhat tron
                                  borderRadius: BorderRadius.circular(10),
                                  clipBehavior: Clip
                                      .hardEdge, //cat anh bo tron k khu rang cua
                                  child: Center(
                                    child: FadeInImage.assetNetwork(
                                        // load image from url
                                        placeholder:
                                            'assets/images/loading.gif',
                                        image: food.urlImage),
                                  )),
                            ),
                            Positioned(
                                // 1 view con chua trong stack
                                top: 30,
                                left: 30,
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      // border view of container
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Colors.white, width: 2)),
                                  child: Row(children: [
                                    const Icon(
                                      Icons.timer,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                    Text(
                                      '${food.duration.inMinutes} minutes',
                                      style: const TextStyle(
                                          fontSize: 22, color: Colors.white),
                                    )
                                  ]),
                                )),
                          ]),
                    );
                  })
              : const Text(
                  'No food found',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
    );
  }
}
