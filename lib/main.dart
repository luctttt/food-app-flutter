import 'package:flutter/material.dart';
import 'package:food_app_navigation/categores_page.dart';
import 'package:food_app_navigation/food_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Food app with navigation",
      initialRoute: '/',
      routes: {
        // dky link router
        '/FoodsPage': (context) => FoodPage(),
        '/CategoriesPage': (context) => CategoresPage()
      },
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Food\'s categories'),
            // centerTitle: false,
          ),
          body: SafeArea(
            child: CategoresPage(),
          ) // safeArea : k bi che tai tho (phan bottom cua may)
          ),
    );
  }
}
