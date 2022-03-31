import 'package:injewlme/domain/model/daily_diet.dart';

abstract class DietRepository {
  Future<DailyDiet> loadDailyDiet({DateTime? date});

  Future<List<DailyDiet>> loadWeeklyDiet({DateTime? date});

  Future<List<DailyDiet>> loadMonthlyDiet({DateTime? date});
}
