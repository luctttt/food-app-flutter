import 'dart:math';

class Food {
  int? id;

  String name;
  String urlImage;
  Duration duration;

  Complexity? complexity;
  List<String>? ingredients = <String>[];
  int? categoryId;

  Food({
    required this.name,
    required this.urlImage,
    required this.duration,
    this.complexity,
    this.ingredients,
    this.categoryId,
  }) {
    id = Random().nextInt(1000);
  }
  @override
  String toString() {
    // TODO: implement toString
    return 'name : $name , category : $categoryId';
  }
}

enum Complexity { Simple, Medium, Hard }
