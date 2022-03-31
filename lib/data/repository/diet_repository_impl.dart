import 'package:injewlme/data/data_source/fake/fake_diet_data_source.dart';
import 'package:injewlme/domain/model/daily_diet.dart';
import 'package:injewlme/domain/repository/diet_repository.dart';

class DietRepositoryImpl implements DietRepository {
  final FakeDietDataSource _dataSource;

  DietRepositoryImpl(this._dataSource);

  @override
  Future<DailyDiet> loadDailyDiet(int year, int month, int day) async {
    final result = await _dataSource.requestDailyDiet(year, month, day);

    return result;
  }

  @override
  Future<List<DailyDiet>> loadMonthlyDiet(int year, int month) {
    // TODO: implement loadMonthlyDiet
    throw UnimplementedError();
  }

  @override
  Future<List<DailyDiet>> loadWeeklyDiet(int year, int month, int week) {
    // TODO: implement loadWeeklyDiet
    throw UnimplementedError();
  }
}
