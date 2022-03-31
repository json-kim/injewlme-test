import 'package:injewlme/data/data_source/fake/fake_diet_data_source.dart';
import 'package:injewlme/domain/model/daily_diet.dart';
import 'package:injewlme/domain/repository/diet_repository.dart';

class DietRepositoryImpl implements DietRepository {
  final FakeDietDataSource _dataSource;

  DietRepositoryImpl(this._dataSource);

  @override
  Future<DailyDiet> loadDailyDiet({DateTime? date}) async {
    final result = await _dataSource.requestDailyDiet(date ??= DateTime.now());

    return result;
  }

  @override
  Future<List<DailyDiet>> loadMonthlyDiet({DateTime? date}) {
    // TODO: implement loadMonthlyDiet
    throw UnimplementedError();
  }

  @override
  Future<List<DailyDiet>> loadWeeklyDiet({DateTime? date}) {
    // TODO: implement loadWeeklyDiet
    throw UnimplementedError();
  }
}
