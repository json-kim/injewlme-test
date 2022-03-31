import 'package:injewlme/domain/model/meal.dart';

class DailyDiet {
  final Meal breakFast;
  final Meal launch;
  final Meal dinner;

  DailyDiet({
    required this.breakFast,
    required this.launch,
    required this.dinner,
  });

  factory DailyDiet.fromJson(Map<String, dynamic> json) {
    return DailyDiet(
      breakFast: Meal.fromJson(json['breakFast']),
      launch: Meal.fromJson(json['launch']),
      dinner: Meal.fromJson(json['dinner']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'breakFast': breakFast.toJson(),
      'launch': launch.toJson(),
      'dinner': dinner.toJson(),
    };
  }
}
