import 'package:injewlme/domain/model/daily_diet.dart';
import 'package:injewlme/domain/model/nutrient.dart';

class DietReport {
  final DateTime date;
  final DailyDiet diet;
  final Nutrient nutrient;

  DietReport({
    required this.date,
    required this.diet,
    required this.nutrient,
  });
}
