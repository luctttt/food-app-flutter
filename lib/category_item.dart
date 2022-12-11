import 'package:flutter/material.dart';
import 'package:food_app_navigation/models/category.dart';

import 'food_page.dart';

class CategoryItem extends StatelessWidget {
  Category category;

  CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Color _color = category.color;
    return InkWell(
      onTap: () {
        print('tapped category : ${category.content}');
        // Navigator.of(context).push(
        //   MaterialPageRoute(builder: (context) => FoodPage(category: category,))
        // );
        Navigator.pushNamed(context, FoodPage.routerName,
            arguments: {'category': category});
      },
      splashColor: Colors.cyan, // mau khi click item
      child: Container(
        //
        decoration: BoxDecoration(
            // the xac dinh bo goc cua container
            color: _color,
            gradient: LinearGradient(
                colors: [_color.withOpacity(0.8), _color],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(category.content,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))
          ],
        ),
      ),
    );
  }
}
