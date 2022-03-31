import 'package:injewlme/domain/model/daily_diet.dart';
import 'package:injewlme/domain/model/nutrient.dart';
import 'package:injewlme/domain/repository/diet_repository.dart';
import 'package:injewlme/domain/usecase/response/diet_report.dart';

class GetDietReportUseCase {
  final DietRepository _dietRepository;

  GetDietReportUseCase(this._dietRepository);

  Future<DietReport> call(DateTime date) async {
    final diet =
        await _dietRepository.loadDailyDiet(date.year, date.month, date.day);

    // 임시 데이터: 식단 정보를 가지고 영양소 구하는 로직 작성
    final nutrient = Nutrient(
      carbohydrate: 24,
      protein: 65,
      fat: 51,
      dietaryFiber: 24,
      cholesterol: 48,
      saturatedFattyAcid: 48,
    );

    return DietReport(date: date, diet: diet, nutrient: nutrient);
  }
}
