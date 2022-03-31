import 'package:injewlme/domain/model/daily_diet.dart';

abstract class DietRepository {
  Future<DailyDiet> loadDailyDiet(int year, int month, int day);

  Future<List<DailyDiet>> loadWeeklyDiet(int year, int month, int week);

  Future<List<DailyDiet>> loadMonthlyDiet(int year, int month);
}
