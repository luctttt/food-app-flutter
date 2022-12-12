import 'package:flutter/material.dart';
import 'package:food_app_navigation/models/food.dart';

class DetailFoodPage extends StatelessWidget {
  Food? food;

  DetailFoodPage({this.food});

  @override
  Widget build(BuildContext context) {
    print(food);
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('${food?.name}'),
        ),
        body: Column(
          children: [
            Center(
              child: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/loading.gif',
                  image: food!.urlImage),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: const Text(
                'Ingredients: ',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: (food!.ingredients != null)
                        ? food!.ingredients!.length
                        : 0,
                    itemBuilder: (context, index) {
                      String ingredient = food!.ingredients![index];
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text(
                            '${index + 1}',
                            style: const TextStyle(
                                fontSize: 19, color: Colors.black12),
                          ),
                        ),
                        title: Text(
                          ingredient,
                          style: const TextStyle(fontSize: 20),
                        ),
                      );
                    }))
          ],
        ));
  }
}
