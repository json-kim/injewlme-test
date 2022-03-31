import 'package:injewlme/domain/model/dish.dart';

class Meal {
  final MealType mealType; // (조식, 중식, 석식)
  final int kcal; // 칼로리
  final Dish mainDish; // 메인 요리
  final List<Dish> dishes; // 요리들

  Meal({
    required this.mealType,
    required this.kcal,
    required this.mainDish,
    required this.dishes,
  });

  factory Meal.fromJson(Map<String, dynamic> json) {
    final List jsonDishes = json['dishes'];
    final dishes = jsonDishes.map((json) => Dish.fromJson(json)).toList();
    return Meal(
      mealType: MealType.values[json['mealType'] as int],
      kcal: json['kcal'],
      mainDish: Dish.fromJson(json['mealType']),
      dishes: dishes,
    );
  }

  Map<String, dynamic> toJson() {
    final jsonDishes = dishes.map((dish) => dish.toJson()).toList();
    return {
      'mealType': mealType.index,
      'kcal': kcal,
      'mainDish': mainDish.toJson(),
      'dishes': jsonDishes,
    };
  }
}

enum MealType {
  breakfast,
  launch,
  dinner,
}
