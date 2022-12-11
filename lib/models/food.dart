import 'dart:math';

class Food {
  int? id;

  String name;
  String url;
  Duration duration;

  Complexity? complexity;
  List<String>? ingredient = <String>[];
  int? categoryId;

  Food({
    required this.name,
    required this.url,
    required this.duration,
    this.complexity,
    this.ingredient,
    this.categoryId,
  }) {
    id = Random().nextInt(1000);
  }
}

enum Complexity { Simple, Medium, Hard }
