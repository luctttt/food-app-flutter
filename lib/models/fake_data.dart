import 'package:flutter/material.dart';
import 'package:food_app_navigation/models/food.dart';

import 'category.dart';

var FAKE_CATEGORYS = [
  Category(id: 1, content: 'Japanese Foods', color: Colors.deepOrange),
  Category(id: 2, content: 'Pizza', color: Colors.teal),
  Category(id: 3, content: 'Humburgers', color: Colors.pink),
  Category(id: 4, content: 'Italian', color: Colors.blueAccent),
  Category(id: 5, content: 'Milk & Yoghurt', color: Colors.deepPurple),
  Category(id: 6, content: 'Vegetable', color: Colors.green),
  Category(id: 7, content: 'Meat', color: Colors.redAccent),
  Category(id: 8, content: 'Potato', color: Colors.yellowAccent),
  Category(id: 9, content: 'Chili', color: Colors.purple),
];

var FAKE_FOOD = [
  Food(
      name: "Susi1 - Japanese",
      url:"urrl",
      duration: Duration(minutes: 25),
      complexity: Complexity.Simple,
      ingredient: ['1', '2', '3', '4'],
      categoryId: 1),
  Food(
      name: "Pho bo1 - VietNamese",
      url:"urrl",
      duration: const Duration(minutes: 25),
      complexity: Complexity.Simple,
      categoryId: 2),
  Food(
      name: "Pho bo2 - VietNamese",
      url:"urrl",
      duration: const Duration(minutes: 25),
      complexity: Complexity.Simple,
      categoryId: 2),
  Food(
      name: "Susi2 - Japanese",
      url:"urrl",
      duration: Duration(minutes: 25),
      complexity: Complexity.Simple,
      ingredient: ['1', '2', '3', '4'],
      categoryId: 1),
];
